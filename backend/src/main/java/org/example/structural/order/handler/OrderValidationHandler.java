package org.example.structural.order.handler;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.example.structural.order.entity.Order;

@Slf4j
@Setter
public abstract class OrderValidationHandler {

    protected OrderValidationHandler next;

    public boolean validate(Order order) {
        if (next != null) {
            return next.validate(order);
        }
        return true;
    }
}
