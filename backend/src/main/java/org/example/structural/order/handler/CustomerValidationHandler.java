package org.example.structural.order.handler;

import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class CustomerValidationHandler extends OrderValidationHandler {

    @Override
    public boolean validate(Order order) {
        log.debug("Validating customer: {}", order.getCustomerName());
        
        if (order.getCustomerName() == null || order.getCustomerName().trim().isEmpty()) {
            log.warn("Customer validation failed: customer name is required");
            return false;
        }
        
        log.info("Customer validation passed for: {}", order.getCustomerName());
        return super.validate(order);
    }
}
