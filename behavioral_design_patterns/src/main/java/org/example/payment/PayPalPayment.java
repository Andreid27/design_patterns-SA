package org.example.payment;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class PayPalPayment implements PaymentStrategy {

    private final String email;

    @Override
    public void pay(double amount) {
        log.info("Processing PayPal payment of ${} using account {}", amount, email);
    }
}
