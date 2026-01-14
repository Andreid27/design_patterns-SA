# Behavioral Design Patterns

Behavioral patterns define how objects interact and communicate with each other. These patterns help create better-managed relationships between objects, promoting flexibility and extensibility in communication.

---

### 1. **Chain of Responsibility Design Pattern**

#### Overview
The **Chain of Responsibility** pattern allows a request to pass through a chain of handlers. Each handler can either process the request or pass it to the next handler in the chain.

#### Real-world Usage:
- **Authentication pipelines**: Different authentication checks (like token validation, role verification) can be applied in sequence.
- **Request validation**: Each handler can validate parts of a request before passing it along to the next handler.
- **Web Frameworks (e.g., Spring Security)**: In security frameworks like Spring Security, a chain of filters can validate requests by applying authentication, authorization, and validation checks sequentially.
- **Technical Support Systems**: Customer support systems often use this pattern to escalate tickets through various levels of support (e.g., Level 1 -> Level 2 -> Manager).
- **Logging Frameworks**: Log messages are passed through multiple handlers, where each handler (e.g., console, file, error log) decides whether to log or pass the message to the next handler.

#### Java Code Example:

```java
import lombok.Setter;

@Setter
abstract class Handler {
    protected Handler next;

    public void handleRequest(String request) {
        if (next != null) {
            next.handleRequest(request);
        }
    }
}

class AuthHandler extends Handler {
    @Override
    public void handleRequest(String request) {
        if (request.contains("auth")) {
            System.out.println("Authentication successful.");
            super.handleRequest(request);
        } else {
            System.out.println("Authentication failed.");
        }
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        AuthHandler auth = new AuthHandler();
        Handler loggingHandler = new LoggingHandler();
        auth.setNext(loggingHandler);

        auth.handleRequest("auth token");
    }
}
```

### Practical Considerations:
- **Flexibility**: Handlers are modular and can be added or removed without changing the overall chain structure.
- **Performance**: Long chains can introduce performance overhead, so limit their length.

---

### 2. **Command Design Pattern**

#### Overview
The **Command** pattern encapsulates a request as an object, allowing you to parameterize clients with queues, requests, and operations, and supporting undoable operations.

#### Real-world Usage:
- **Undo/redo** actions in applications**: Text editors use the Command pattern to allow reversible actions.
- **Task scheduling**: Commands can be scheduled and executed at specific times.
- **GUI Frameworks (e.g., JavaFX, Swing)**: In GUI applications, button clicks and other user actions are represented as command objects, allowing actions like undo and redo.
- **Job Scheduling**: Commands represent tasks that can be scheduled to run at specific times (e.g., `Quartz Scheduler` in Java).
- **Transaction Management (e.g., database transactions)**: In banking and financial systems, each transaction (deposit, withdrawal) can be a command object that can be executed, stored, or reversed.

#### Java Code Example:

```java
import lombok.AllArgsConstructor;

interface Command {
    void execute();
}

@AllArgsConstructor
class PasteCommand implements Command {
    private String clipboard;

    @Override
    public void execute() {
        System.out.println("Pasting: " + clipboard);
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        Command pasteCommand = new PasteCommand("Hello World");
        pasteCommand.execute();
    }
}
```

### Practical Considerations:
- **History tracking**: Command objects can be stored for undo/redo functionality.
- **Complexity**: Commands add an extra layer of abstraction that can make code more complex.

---

### 3. **Observer Design Pattern**

#### Overview
The **Observer** pattern allows one object (the subject) to notify other objects (observers) of changes. It’s useful in scenarios where a change in one object requires others to update.

#### Real-world Usage:
- **Event-driven applications**: UI frameworks use observers for components to react to user actions.
- **Data binding**: Real-time applications with data binding (e.g., dashboards) use observers to update views when data changes.
- **Event Listeners in GUI Frameworks**: Observers are used for components (buttons, text fields) to listen to user actions and react (e.g., `ActionListener` in Swing).
- **Stock Market Applications**: Investors subscribe to stock changes, and when a stock price changes, all observers (investors) are notified.
- **Real-time Notifications (e.g., social media platforms)**: When a user posts something, all followers are notified immediately.

#### Java Code Example:

```java
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

interface Observer {
    void update(String message);
}

class Customer implements Observer {
    @Override
    public void update(String message) {
        System.out.println("Customer notified: " + message);
    }
}

@Getter @Setter
class Store {
    private List<Observer> observers = new ArrayList<>();

    public void addObserver(Observer observer) {
        observers.add(observer);
    }

    public void notifyObservers(String message) {
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        Store store = new Store();
        Observer customer1 = new Customer();
        store.addObserver(customer1);
        
        store.notifyObservers("New product available!");
    }
}
```

### Practical Considerations:
- **Loose coupling**: Observers and subjects can vary independently.
- **Performance**: Frequent updates can cause performance issues if there are many observers.

---

### 4. **Strategy Design Pattern**

#### Overview
The **Strategy** pattern allows you to define a family of algorithms, encapsulate them as individual classes, and select one at runtime based on the context.

#### Real-world Usage:
- **Payment systems**: Different payment strategies (credit card, PayPal) can be chosen at runtime.
- **Sorting algorithms**: Different sorting methods (merge sort, quicksort) can be selected based on data.
- **Payment Processing Systems (e.g., E-commerce websites)**: Different payment strategies (credit card, PayPal, cryptocurrency) can be selected at checkout.
- **Sorting Algorithms (e.g., Java Collections)**: Java's `Collections.sort()` method can take different comparator strategies, allowing sorting by different attributes or criteria.
- **Data Compression**: Applications like WinRAR or 7zip use different compression algorithms (e.g., ZIP, RAR, GZIP) based on user choice.

#### Java Code Example:

```java
import lombok.AllArgsConstructor;

interface PaymentStrategy {
    void pay(double amount);
}

@AllArgsConstructor
class CreditCardPayment implements PaymentStrategy {
    private String cardNumber;

    @Override
    public void pay(double amount) {
        System.out.println("Paid $" + amount + " with Credit Card: " + cardNumber);
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        PaymentStrategy payment = new CreditCardPayment("1234-5678-9876-5432");
        payment.pay(250.00);
    }
}
```

---

## Exercise Instructions

This exercise will guide you in implementing several design patterns within an e-commerce order processing system, refactoring it to follow a **Spring Boot layered architecture** while persisting data with **H2**.

### Design Patterns to Implement

1. **Chain of Responsibility**:
   - Set up a chain of handlers for order validation.
   - Include classes like `InventoryCheckHandler` to handle inventory checks and `PaymentValidationHandler` to validate payments.

2. **Command**:
   - Develop commands such as `PlaceOrderCommand` to execute order actions, allowing flexible handling of different order states (e.g., placing, canceling).

3. **Observer**:
   - Implement a `NotificationService` to notify observers (e.g., `EmailNotification`, `SMSNotification`) whenever an order status changes.

4. **Strategy**:
   - Create payment strategies, such as `CreditCardPayment`, and integrate them to support various payment methods.

### Task Breakdown

1. **Refactor the Project as a Spring Boot Application**:
   - Follow the **layered architecture** structure in Spring Boot, utilizing annotations like `@RestController`, `@Service`, and `@Repository` to separate the layers.
   - Adjust the `pom.xml` file to include the required Spring Boot, Spring Data JPA, and Lombok dependencies for working with Spring Boot and H2.

   #### Spring Boot Layered Architecture

   - **Presentation Layer (Controller Layer)**:
      - Create RESTful controllers with `@RestController` to manage API endpoints, handling HTTP requests and interacting with the service layer for business logic.
   - **Service Layer (Business Logic Layer)**:
      - Use `@Service` classes to implement business logic and coordinate between the controller and repository layers.
   - **Data Access Layer (Repository Layer)**:
      - Define repositories with `@Repository` to handle database interactions, using Spring Data JPA for CRUD and custom query support.
   - **Model Layer (Domain Layer)**:
      - Define entities using `@Entity` annotations to represent the core structure of the data being processed.

2. **Implement Persistence with H2 Database**:
   - Configure an **H2 database** to persist data for testing and development.
   - Refactor the existing `TODO` comments in the code to save and retrieve data from the H2 database using Spring Data JPA repositories.

3. **Logging System**:
   - Use `@Slf4j` lombok's annotation to log relevant debug / info messages from your app, instead of `System.out.prinline()` 

### Notes
- **Annotations and Comments**: 

`TODO` comments are included in the code template to guide you on where to add functionality for each design pattern and to integrate H2 database operations.
- **Run Configuration**: 

Make sure to set up a Spring Boot run configuration for easy application startup and testing. More info [here](https://www.jetbrains.com/help/idea/run-debug-configuration.html#share-configurations).

- **Template**:

You can follow the spring boot template app from `structural_design_patterns` module