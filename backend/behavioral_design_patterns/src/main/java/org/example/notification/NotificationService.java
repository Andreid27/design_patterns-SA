package org.example.notification;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class NotificationService {

    private final List<Observer> observers = new ArrayList<>();

    public void addObserver(Observer observer) {
        observers.add(observer);
        log.debug("Observer registered: {}", observer.getClass().getSimpleName());
    }

    public void removeObserver(Observer observer) {
        observers.remove(observer);
        log.debug("Observer removed: {}", observer.getClass().getSimpleName());
    }

    public void notifyObservers(String message) {
        log.info("Notifying {} observers", observers.size());
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
}
