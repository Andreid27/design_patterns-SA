package org.example.service;

import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.command.CancelOrderCommand;
import org.example.command.OrderInvoker;
import org.example.command.PlaceOrderCommand;
import org.example.dto.OrderRequest;
import org.example.dto.OrderResponse;
import org.example.entity.Order;
import org.example.handler.CustomerValidationHandler;
import org.example.handler.InventoryCheckHandler;
import org.example.handler.OrderValidationHandler;
import org.example.handler.PaymentValidationHandler;
import org.example.notification.EmailNotification;
import org.example.notification.NotificationService;
import org.example.notification.SMSNotification;
import org.example.payment.PaymentContext;
import org.example.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final OrderInvoker orderInvoker;
    private final NotificationService notificationService;
    private final PaymentContext paymentContext;
    private final CustomerValidationHandler customerValidationHandler;
    private final InventoryCheckHandler inventoryCheckHandler;
    private final PaymentValidationHandler paymentValidationHandler;
    private final EmailNotification emailNotification;
    private final SMSNotification smsNotification;

    private OrderValidationHandler validationChain;

    @PostConstruct
    public void init() {
        customerValidationHandler.setNext(inventoryCheckHandler);
        inventoryCheckHandler.setNext(paymentValidationHandler);
        validationChain = customerValidationHandler;

        notificationService.addObserver(emailNotification);
        notificationService.addObserver(smsNotification);

        log.info("OrderService initialized with validation chain and observers");
    }

    public OrderResponse createOrder(OrderRequest request) {
        log.info("Creating order for customer: {}", request.getCustomerName());

        Order order = new Order(request.getCustomerName(), request.getTotalAmount());
        order.setPaymentMethod(request.getPaymentMethod());

        if (!validationChain.validate(order)) {
            log.warn("Order validation failed for customer: {}", request.getCustomerName());
            return new OrderResponse(null, request.getCustomerName(), "FAILED", 
                    request.getTotalAmount(), request.getPaymentMethod(), "Order validation failed");
        }

        PlaceOrderCommand placeCommand = new PlaceOrderCommand(order, orderRepository);
        orderInvoker.executeCommand(placeCommand);

        String paymentMethod = request.getPaymentMethod() != null ? request.getPaymentMethod() : "CREDIT_CARD";
        String paymentDetails = paymentMethod.equals("PAYPAL") ? "customer@email.com" : "4111111111111111";
        paymentContext.setPaymentMethod(paymentMethod, paymentDetails);
        paymentContext.executePayment(order.getTotalAmount());

        notificationService.notifyObservers("Order " + order.getId() + " has been placed for " + order.getCustomerName());

        return new OrderResponse(order.getId(), order.getCustomerName(), order.getStatus(),
                order.getTotalAmount(), order.getPaymentMethod(), "Order created successfully");
    }

    public OrderResponse getOrder(Long id) {
        return orderRepository.findById(id)
                .map(order -> new OrderResponse(order.getId(), order.getCustomerName(),
                        order.getStatus(), order.getTotalAmount(), order.getPaymentMethod(), null))
                .orElse(new OrderResponse(null, null, null, 0, null, "Order not found"));
    }

    public List<OrderResponse> getAllOrders() {
        return orderRepository.findAll().stream()
                .map(order -> new OrderResponse(order.getId(), order.getCustomerName(),
                        order.getStatus(), order.getTotalAmount(), order.getPaymentMethod(), null))
                .toList();
    }

    public OrderResponse cancelOrder(Long id) {
        return orderRepository.findById(id)
                .map(order -> {
                    CancelOrderCommand cancelCommand = new CancelOrderCommand(order, orderRepository);
                    orderInvoker.executeCommand(cancelCommand);
                    notificationService.notifyObservers("Order " + order.getId() + " has been cancelled");
                    return new OrderResponse(order.getId(), order.getCustomerName(), order.getStatus(),
                            order.getTotalAmount(), order.getPaymentMethod(), "Order cancelled successfully");
                })
                .orElse(new OrderResponse(null, null, null, 0, null, "Order not found"));
    }

    public void undoLastAction() {
        orderInvoker.undoLastCommand();
    }
}
