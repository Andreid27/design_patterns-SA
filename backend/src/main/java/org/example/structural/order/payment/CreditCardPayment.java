package org.example.structural.order.payment;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class CreditCardPayment implements PaymentStrategy {

    private final String cardNumber;

    @Override
    public void pay(double amount) {
        String maskedCard = "**** **** **** " + cardNumber.substring(cardNumber.length() - 4);
        log.info("Processing credit card payment of ${} using card {}", amount, maskedCard);
    }
}
