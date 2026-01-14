package org.example.handler;

import lombok.extern.slf4j.Slf4j;
import org.example.entity.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class InventoryCheckHandler extends OrderValidationHandler {

    @Override
    public boolean validate(Order order) {
        log.debug("Checking inventory for order amount: {}", order.getTotalAmount());
        
        if (order.getTotalAmount() <= 0) {
            log.warn("Inventory check failed: invalid order amount");
            return false;
        }
        
        log.info("Inventory check passed for order amount: {}", order.getTotalAmount());
        return super.validate(order);
    }
}
