package org.example.structural.order.command;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;
import org.example.structural.order.repository.OrderRepository;

@Slf4j
@RequiredArgsConstructor
public class CancelOrderCommand implements OrderCommand {

    private final Order order;
    private final OrderRepository orderRepository;
    private String previousStatus;

    @Override
    public void execute() {
        previousStatus = order.getStatus();
        order.setStatus("CANCELLED");
        orderRepository.save(order);
        log.info("Order cancelled successfully with ID: {}", order.getId());
    }

    @Override
    public void undo() {
        order.setStatus(previousStatus);
        orderRepository.save(order);
        log.info("Order cancellation undone for ID: {}", order.getId());
    }
}
