package org.example.structural.order.command;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;
import org.example.structural.order.repository.OrderRepository;

@Slf4j
@RequiredArgsConstructor
public class PlaceOrderCommand implements OrderCommand {

    private final Order order;
    private final OrderRepository orderRepository;

    @Override
    public void execute() {
        order.setStatus("PLACED");
        Order savedOrder = orderRepository.save(order);
        log.info("Order placed successfully with ID: {}", savedOrder.getId());
    }

    @Override
    public void undo() {
        order.setStatus("CANCELLED");
        orderRepository.save(order);
        log.info("Order placement undone for ID: {}", order.getId());
    }
}
