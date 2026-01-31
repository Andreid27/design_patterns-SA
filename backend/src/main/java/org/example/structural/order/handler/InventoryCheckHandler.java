package org.example.structural.order.handler;

import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class InventoryCheckHandler extends OrderValidationHandler {

    @Override
    public boolean validate(Order order) {
        log.debug("Checking inventory for book: {}, quantity: {}", order.getBookId(), order.getQuantity());

        if (order.getQuantity() <= 0) {
            log.warn("Inventory check failed: invalid quantity");
            return false;
        }

        log.info("Inventory check passed for order amount: {}", order.getTotalAmount());
        return super.validate(order);
    }
}
