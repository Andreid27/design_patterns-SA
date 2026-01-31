package org.example.structural.order.handler;

import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class PaymentValidationHandler extends OrderValidationHandler {

    private static final double MAX_ORDER_AMOUNT = 10000.0;

    @Override
    public boolean validate(Order order) {
        log.debug("Validating payment for order: {}", order.getTotalAmount());
        
        if (order.getTotalAmount() > MAX_ORDER_AMOUNT) {
            log.warn("Payment validation failed: amount exceeds maximum limit of {}", MAX_ORDER_AMOUNT);
            return false;
        }
        
        log.info("Payment validation passed for amount: {}", order.getTotalAmount());
        return super.validate(order);
    }
}
