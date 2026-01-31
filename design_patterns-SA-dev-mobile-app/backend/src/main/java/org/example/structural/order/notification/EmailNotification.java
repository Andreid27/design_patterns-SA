package org.example.structural.order.notification;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class EmailNotification implements Observer {

    @Override
    public void update(String message) {
        log.info("[EMAIL] Sending notification: {}", message);
    }
}
