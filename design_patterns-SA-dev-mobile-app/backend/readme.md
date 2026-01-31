# Structural Design Patterns

Structural patterns define how objects and classes can be combined to form larger, more flexible structures, enhancing code efficiency and scalability.

### 1. **Adapter Design Pattern**

#### Overview:
The **Adapter** pattern allows objects with incompatible interfaces to collaborate. It works as a wrapper that translates one interface into another that a client expects.

#### Real-world Usage:
- **Integrating legacy code**: Adapter can help adapt legacy systems to new systems without altering existing code.
- **Third-party libraries**: When using third-party services that don't match your system's interfaces, Adapter can bridge the gap.

#### Java Code Example:

```java
// Target interface
interface MediaPlayer {
    void play(String filename);
}

// Adaptee (incompatible interface)
class LegacyMediaPlayer {
    void playFile(String filename) { /* play legacy format */ }
}

// Adapter
class MediaAdapter implements MediaPlayer {
    private LegacyMediaPlayer legacyPlayer = new LegacyMediaPlayer();

    @Override
    public void play(String filename) {
        legacyPlayer.playFile(filename);  // Adapting the incompatible method
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        MediaPlayer player = new MediaAdapter();
        player.play("song.mp3");
    }
}
```

### Practical Considerations:
- **Simplicity**: Adapter simplifies using incompatible libraries or legacy code in new applications.
- **Overhead**: Introduces slight overhead due to additional object creation (Adapter itself).
- **Flexibility**: Makes integrating third-party services easier without changing existing code.

---

### 2. **Bridge Design Pattern**

#### Overview:
The **Bridge** pattern decouples an abstraction from its implementation so that both can vary independently. It is used to separate the logic (abstraction) from the actual implementation.

#### Real-world Usage:
- **Cross-platform applications**: Allows developing UIs that work on different platforms like Windows, macOS, or Linux.
- **Device control systems**: A remote control can operate different devices using the same interface.

#### Java Code Example:

```java
// Abstraction
abstract class RemoteControl {
    protected Device device;

    public RemoteControl(Device device) {
        this.device = device;
    }

    abstract void togglePower();
}

// Implementor
interface Device {
    void turnOn();
    void turnOff();
}

// Concrete Implementor
class TV implements Device {
    public void turnOn() { /* TV on */ }
    public void turnOff() { /* TV off */ }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        Device tv = new TV();
        RemoteControl remote = new RemoteControl(tv);
        remote.togglePower();  // Controls TV
    }
}
```

### Practical Considerations:
- **Decoupling**: Bridge allows you to extend abstraction and implementation independently.
- **Complexity**: May introduce unnecessary complexity in simpler systems that don’t need such separation.

---

### 3. **Composite Design Pattern**

#### Overview:
The **Composite** pattern lets you treat individual objects and compositions of objects uniformly, creating tree structures to represent part-whole hierarchies.

#### Real-world Usage:
- **File systems**: Files and folders, where both can be treated as components (folders contain files or other folders).
- **GUI components**: Containers and individual widgets (buttons, text fields) can be treated as a single unit.

#### Java Code Example:

```java
// Component
interface FileSystemComponent {
    void display();
}

// Leaf
class File implements FileSystemComponent {
    public void display() { /* Show file */ }
}

// Composite
class Folder implements FileSystemComponent {
    private List<FileSystemComponent> children = new ArrayList<>();

    public void display() {
        for (FileSystemComponent child : children) {
            child.display();  // Delegates the display to its children
        }
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        FileSystemComponent file1 = new File();
        FileSystemComponent folder = new Folder();
        
        folder.display();  // Will recursively display files and subfolders
    }
}
```

### Practical Considerations:
- **Hierarchy management**: Ideal for managing objects in hierarchical tree structures.
- **Flexibility**: Easily extendable by adding more leaf or composite classes.

---

### 4. **Decorator Design Pattern**

#### Overview:
The **Decorator** pattern dynamically adds responsibilities to objects without modifying the class. It provides a flexible alternative to subclassing for extending functionality.

#### Real-world Usage:
- **UI widgets**: Adding scrollbars or borders to windows, buttons, or text fields.
- **File I/O**: Java’s I/O classes use Decorator to add functionality such as buffering, compression, or encryption.

#### Java Code Example:

```java
// Component
interface Notification {
    void send(String message);
}

// Concrete Component
class EmailNotification implements Notification {
    public void send(String message) { /* Send email */ }
}

// Decorator
class SMSNotificationDecorator implements Notification {
    private Notification wrapped;

    public SMSNotificationDecorator(Notification notification) {
        this.wrapped = notification;
    }

    public void send(String message) {
        wrapped.send(message);   // Original notification
        sendSMS(message);        // Additional SMS functionality
    }
    
    private void sendSMS(String message) { /* Send SMS */ }
}
```

```java
package org.example.structural.service;

import java.util.List;

// Component
interface Notification {
    void send(String message);
}

// Concrete Component
class EmailNotification implements Notification {
    public void send(String message) {
        System.out.println("email sent");
    }
}

class SMSNotification implements Notification {
    public void send(String message) {
        System.out.println("sms sent");
    }
}

// Decorator
class MultipleNotificationDecorator implements Notification {
    private List<Notification> wrapped;

    public MultipleNotificationDecorator(Notification... notifications) {
        this.wrapped = List.of(notifications);
    }

    public void send(String message) {
        wrapped.forEach(notif -> notif.send(message));
        doOneMoreThing(message);        // Additional SMS functionality
    }

    private void doOneMoreThing(String message) { /* doOneMoreThing */ }
}

public class Main {
    public static void main(String[] args) {
        Notification notification = new MultipleNotificationDecorator(new EmailNotification(), new SMSNotification());
        notification.send("Hello!");  // Sends both email and SMS
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        Notification notification = new SMSNotificationDecorator(new EmailNotification());
        notification.send("Hello!");  // Sends both email and SMS
    }
}
```

### Practical Considerations:
- **Flexibility**: Adds or modifies behavior at runtime without changing the object’s code.
- **Overhead**: Can lead to many small objects with decorators stacked together.

---

### 5. **Facade Design Pattern**

#### Overview:
The **Facade** pattern provides a simplified interface to a complex subsystem, making it easier for clients to interact with the system.

#### Real-world Usage:
- **Complex libraries**: A Facade can wrap complex subsystems such as a database or an external API.
- **Subsystem management**: Simplifies communication with multiple subsystems by hiding the complexity.

#### Java Code Example:

```java
// Facade
class BookingFacade {
    private RoomBooking roomBooking = new RoomBooking();
    private FlightBooking flightBooking = new FlightBooking();

    public void bookCompleteTrip(String details) {
        roomBooking.bookRoom(details);
        flightBooking.bookFlight(details);
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        BookingFacade bookingFacade = new BookingFacade();
        bookingFacade.bookCompleteTrip("Travel Details");  // Simplified booking process
    }
}
```

### Practical Considerations:
- **Simplicity**: Makes complex subsystems easier to use with minimal exposure to the underlying complexity.
- **Tight coupling**: Facades may tightly couple clients to specific subsystems.

---

### 6. **Flyweight Design Pattern**

#### Overview:
The **Flyweight** pattern minimizes memory usage by sharing as much data as possible with other similar objects. It is primarily used to reduce the number of objects created.

#### Real-world Usage:
- **Graphic editors**: Objects like shapes or icons that appear in large numbers can share common properties (e.g., color, texture).
- **Text editors**: Characters in documents can share common formatting information (font, size).

#### Java Code Example:

```java
// Flyweight
class TreeType {
    private String name;
    private String color;

    // Shared intrinsic state
}

// Flyweight Factory
class TreeFactory {
    private static Map<String, TreeType> treeTypes = new HashMap<>();

    public static TreeType getTreeType(String name, String color) {
        String key = name + color;
        if (!treeTypes.containsKey(key)) {
            treeTypes.put(key, new TreeType(name, color));
        }
        return treeTypes.get(key);
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        TreeType oak = TreeFactory.getTreeType("Oak", "Green");
        TreeType pine = TreeFactory.getTreeType("Pine", "Green");
        // Oak and Pine share common intrinsic data
    }
}
```

### Practical Considerations:
- **Memory efficiency**: Greatly reduces memory usage when dealing with large numbers of similar objects.
- **Complexity**: The flyweight approach adds complexity by separating shared and unique states.

---

### 7. **Proxy Design Pattern**

#### Overview:
The **Proxy** pattern provides a surrogate or placeholder object to control access to another object. It is commonly used for lazy initialization, access control, or logging.

#### Real-world Usage:
- **Remote proxies**: Manage communication between a client and a remote object.
- **Virtual proxies**: Delay the creation of an expensive object until it's needed.

#### Java Code Example:

```java
// Subject
interface Image {
    void display();
}

// Real Subject
class RealImage implements Image {
    public RealImage(String filename) { /* Load image from disk */ }
    public void display() { /* Display image */ }
}

// Proxy
class ImageProxy implements Image {
    private RealImage realImage;
    private String filename;

    public ImageProxy(String filename) {
        this.filename = filename;
    }

    public void display() {
        if (realImage == null) {
            realImage = new RealImage(filename); // Lazy initialization
        }
        realImage.display();
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        Image image = new ImageProxy("photo.jpg");
        image.display();  // Loads image
    }
}
```

### Practical Considerations:
- **Resource management**: Controls access to heavy or resource-consuming objects.
- **Lazy loading**: Delays expensive operations until they're actually needed, optimizing performance.

## Spring Boot case study

In **Spring Boot**, several structural design patterns are commonly utilized. Here are a few with concrete examples:

### 1. **Facade**

- **Use in Spring Boot**: Spring’s `@Service` and `@Controller` layers often act as facades, hiding the complexity of business logic from the client.
- **Example**: A `UserService` class provides a simplified interface for managing user operations (like registration, login) while internally calling multiple repositories and services.

```java
@Service
public class UserService {
    public void register(User user) { /* calls multiple repository methods */ }
}
```

### 2. **Proxy**

- **Use in Spring Boot**: Spring’s `@Transactional` annotation uses the Proxy pattern to manage database transactions by wrapping method calls in transaction boundaries.
- **Example**: When a method in a service class is annotated with `@Transactional`, Spring creates a proxy around it to handle commit and rollback actions.

```java
@Service
public class OrderService {
    @Transactional
    public void placeOrder(Order order) { /* transaction managed by Spring */ }
}
```

### 3. **Decorator**

- **Use in Spring Boot**: Spring Boot’s filter chain in `@WebFilter` or the `HandlerInterceptor` can act as decorators, adding cross-cutting concerns like logging, security, and caching.
- **Example**: A `LoggingInterceptor` that wraps around HTTP requests to log each request and response.

```java
public class LoggingInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(...) { /* logs request */ }
}
```

### 4. **Adapter**

- **Use in Spring Boot**: Spring MVC uses adapters to convert incompatible types and data formats, such as mapping HTTP requests to Java objects.
- **Example**: `@RequestMapping` in Spring Boot adapts HTTP requests to handler methods, allowing different formats like JSON to be converted into Java objects.

```java
@RestController
public class UserController {
    @GetMapping("/users/{id}")
    public User getUser(@PathVariable Long id) { /* adapts HTTP to Java method */ }
}
```

-----

# Design Patterns Exercise

This project requires you to implement several structural and creational design patterns within a Spring Boot application connected to an H2 database.

## Exercise Requirements

### Scenario
You are tasked with creating a **Book Management System** for a library using Spring Boot. The system needs to handle adding, updating, and retrieving books from a database.

### Requirements

1. **Facade Pattern**:
    - Create a `LibraryFacade` class that provides simplified methods for library operations (e.g., adding a book, finding books by category).
    - **TODO**: Implement methods to interact with multiple services and repositories in a single interface.

2. **Decorator Pattern**:
    - Use the decorator pattern to add features to books dynamically, such as marking books as "Featured" or "Bestsellers."
    - **TODO**: Implement decorator classes for additional features on book objects.

3. **Repository and Service Layers**:
    - Implement a `BookRepository` and `BookService` for basic CRUD operations.
    - **TODO**: Define methods in these layers for book data management.

4. **H2 Database Configuration**:
   - Configure H2 in-memory database with sample data for testing.
   - **RUN CONFIGURATION**: Use the IntelliJ run configuration to start the Spring Boot application. 
   - use java 17, Amazon Coretto (File/Project Structure/ sdk dropdown/ download java 17-Amazon Coretto)
   - Acess [Swagger UI](http://localhost:8080/swagger-ui/index.html)
   - Access [h2 console](http://localhost:8080/h2-console)
     ```
     Driver Class: org.h2.Driver
     JDBC URL: jdbc:h2:mem:librarydb
     User Name: sa
     Password: password
     ```

## Instructions
Complete the `TODO` sections in each file to finalize the solution.