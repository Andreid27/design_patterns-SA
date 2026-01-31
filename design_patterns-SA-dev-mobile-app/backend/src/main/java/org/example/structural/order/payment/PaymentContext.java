package org.example.structural.order.payment;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class PaymentContext {

    @Setter
    private PaymentStrategy strategy;

    public void executePayment(double amount) {
        if (strategy == null) {
            log.warn("No payment strategy set, using default credit card");
            strategy = new CreditCardPayment("0000000000000000");
        }
        strategy.pay(amount);
    }

    public void setPaymentMethod(String method, String details) {
        switch (method.toUpperCase()) {
            case "CREDIT_CARD" -> strategy = new CreditCardPayment(details);
            case "PAYPAL" -> strategy = new PayPalPayment(details);
            default -> {
                log.warn("Unknown payment method: {}, defaulting to credit card", method);
                strategy = new CreditCardPayment(details);
            }
        }
        log.debug("Payment strategy set to: {}", method);
    }
}
