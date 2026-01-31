package org.example.structural.order.service;

import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.command.CancelOrderCommand;
import org.example.structural.order.command.OrderInvoker;
import org.example.structural.order.command.PlaceOrderCommand;
import org.example.structural.order.dto.OrderRequest;
import org.example.structural.order.dto.OrderResponse;
import org.example.structural.order.entity.Order;
import org.example.structural.order.handler.CustomerValidationHandler;
import org.example.structural.order.handler.InventoryCheckHandler;
import org.example.structural.order.handler.OrderValidationHandler;
import org.example.structural.order.handler.PaymentValidationHandler;
import org.example.structural.order.notification.EmailNotification;
import org.example.structural.order.notification.NotificationService;
import org.example.structural.order.notification.SMSNotification;
import org.example.structural.order.payment.PaymentContext;
import org.example.structural.order.repository.OrderRepository;
import org.example.structural.repository.BookRepository;
import org.example.structural.entity.Book;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final BookRepository bookRepository;
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

        if (request.getBookId() == null) {
            return new OrderResponse(null, request.getCustomerName(), "FAILED",
                    null, null, 0, 0, 0, request.getPaymentMethod(), "Book ID is required");
        }

        Book book = bookRepository.findById(request.getBookId()).orElse(null);
        if (book == null) {
            return new OrderResponse(null, request.getCustomerName(), "FAILED",
                    request.getBookId(), null, 0, 0, 0, request.getPaymentMethod(), "Book not found");
        }

        int quantity = request.getQuantity() != null ? request.getQuantity() : 1;
        double totalAmount = book.getPrice() * quantity;

        Order order = new Order(request.getCustomerName(), totalAmount);
        order.setBookId(book.getId());
        order.setBookTitle(book.getTitle());
        order.setUnitPrice(book.getPrice());
        order.setQuantity(quantity);
        order.setPaymentMethod(request.getPaymentMethod());

        if (!validationChain.validate(order)) {
            log.warn("Order validation failed for customer: {}", request.getCustomerName());
            return new OrderResponse(null, request.getCustomerName(), "FAILED",
                    order.getBookId(), order.getBookTitle(), order.getUnitPrice(), order.getQuantity(),
                    order.getTotalAmount(), request.getPaymentMethod(), "Order validation failed");
        }

        PlaceOrderCommand placeCommand = new PlaceOrderCommand(order, orderRepository);
        orderInvoker.executeCommand(placeCommand);

        String paymentMethod = request.getPaymentMethod() != null ? request.getPaymentMethod() : "CREDIT_CARD";
        String paymentDetails = paymentMethod.equals("PAYPAL") ? "customer@email.com" : "4111111111111111";
        paymentContext.setPaymentMethod(paymentMethod, paymentDetails);
        paymentContext.executePayment(order.getTotalAmount());

        notificationService.notifyObservers("Order " + order.getId() + " has been placed for " + order.getCustomerName());

        return new OrderResponse(order.getId(), order.getCustomerName(), order.getStatus(),
                order.getBookId(), order.getBookTitle(), order.getUnitPrice(), order.getQuantity(),
                order.getTotalAmount(), order.getPaymentMethod(), "Order created successfully");
    }

    public OrderResponse getOrder(Long id) {
        return orderRepository.findById(id)
                .map(order -> new OrderResponse(order.getId(), order.getCustomerName(),
                        order.getStatus(), order.getBookId(), order.getBookTitle(), order.getUnitPrice(),
                        order.getQuantity(), order.getTotalAmount(), order.getPaymentMethod(), null))
                .orElse(new OrderResponse(null, null, null, null, null, 0, 0, 0, null, "Order not found"));
    }

    public List<OrderResponse> getAllOrders() {
        return orderRepository.findAll().stream()
                .map(order -> new OrderResponse(order.getId(), order.getCustomerName(),
                        order.getStatus(), order.getBookId(), order.getBookTitle(), order.getUnitPrice(),
                        order.getQuantity(), order.getTotalAmount(), order.getPaymentMethod(), null))
                .toList();
    }

    public OrderResponse cancelOrder(Long id) {
        return orderRepository.findById(id)
                .map(order -> {
                    CancelOrderCommand cancelCommand = new CancelOrderCommand(order, orderRepository);
                    orderInvoker.executeCommand(cancelCommand);
                    notificationService.notifyObservers("Order " + order.getId() + " has been cancelled");
                    return new OrderResponse(order.getId(), order.getCustomerName(), order.getStatus(),
                            order.getBookId(), order.getBookTitle(), order.getUnitPrice(), order.getQuantity(),
                            order.getTotalAmount(), order.getPaymentMethod(), "Order cancelled successfully");
                })
                .orElse(new OrderResponse(null, null, null, null, null, 0, 0, 0, null, "Order not found"));
    }

    public void undoLastAction() {
        orderInvoker.undoLastCommand();
    }
}
