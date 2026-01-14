## Creational Patterns

Creational patterns aim to reduce the complexities involved in creating objects by abstracting the instantiation process. These patterns ensure that the system is not tightly coupled to the object creation process, offering more flexibility and control. Let's explore some common creational patterns, with practical examples where they are highly suitable.

### 1. Singleton Design Pattern

#### Overview:
The **Singleton** pattern ensures that a class has only one instance, providing a global point of access to it. This is useful when exactly one object is needed to coordinate actions across a system.

#### Real-world Usage:
- **Database connections**: Many applications require only one connection object to interact with a database, to avoid multiple costly connections.
- **Configuration settings**: An application might need a single shared instance of a configuration object across different modules.
- **Logging systems**: A logger class is usually instantiated once to collect and write logs throughout an application.

#### Java Code Example:

```java
public class DatabaseConnection {
    private static DatabaseConnection instance;
    
    // Private constructor prevents instantiation from other classes
    private DatabaseConnection() {
        System.out.println("Database connection created!");
    }

    // Global access point to get the instance
    public static synchronized DatabaseConnection getInstance() {
        if (instance == null) {
            instance = new DatabaseConnection();
        }
        return instance;
    }

    public void query(String sql) {
        System.out.println("Executing query: " + sql);
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        DatabaseConnection connection1 = DatabaseConnection.getInstance();
        connection1.query("SELECT * FROM users");

        DatabaseConnection connection2 = DatabaseConnection.getInstance();
        connection2.query("SELECT * FROM orders");

        System.out.println(connection1 == connection2);  // Outputs: true
    }
}
```

### Practical Considerations:
- **Thread safety**: In multi-threaded environments, you need to make the Singleton thread-safe using synchronization, like in the above example. Alternatively, you can use the Bill Pugh Singleton pattern.
- **Lazy initialization**: The instance is created only when it is first requested, which helps optimize resource usage.
- **Global state risks**: Be cautious as Singleton might introduce hidden dependencies and difficulties in testing.

---

### 2. Factory Method Design Pattern

#### Overview:
The **Factory Method** pattern defines an interface for creating objects but allows subclasses to alter the type of objects that will be created. This decouples object creation from the client code, providing flexibility in object instantiation.

#### Real-world Usage:
- **UI frameworks**: In graphical applications, different UI components (e.g., buttons, text fields) might be created based on the operating system or theme.
- **Document creation**: In applications like word processors, you can create different document formats (PDF, DOCX) without exposing the creation logic to the client.

#### Java Code Example:

```java
// Shape Interface
interface Shape {
    void draw();
}

// Concrete implementations for shapes
class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a circle.");
    }
}

class Square implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a square.");
    }
}

// Factory class to create shapes
class ShapeFactory {
    public Shape createShape(String shapeType) {
        switch (shapeType) {
            case "Circle":
                return new Circle();
            case "Square":
                return new Square();
            default:
                throw new IllegalArgumentException("Unknown shape type: " + shapeType);
        }
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        ShapeFactory shapeFactory = new ShapeFactory();

        Shape shape1 = shapeFactory.createShape("Circle");
        shape1.draw();  // Outputs: Drawing a circle.

        Shape shape2 = shapeFactory.createShape("Square");
        shape2.draw();  // Outputs: Drawing a square.
    }
}
```

### Practical Considerations:
- **Flexibility**: The Factory Method allows the creation logic to be extended without modifying the existing code, adhering to the **Open/Closed Principle**.
- **Decoupling**: The client code is decoupled from the specific object instantiation process, which makes the code more modular and testable.
- **Variation**: Factory Method can be useful in frameworks where objects of different types are needed, such as user interface elements or database operations.

---

### 3. Abstract Factory Design Pattern

#### Overview:
The **Abstract Factory** pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes. It’s essentially a factory of factories.

#### Real-world Usage:
- **Cross-platform UI applications**: When building applications that need to support multiple platforms, Abstract Factory can be used to create UI elements (buttons, scrollbars) specific to each platform.
- **Game development**: In games, Abstract Factory can help in creating different object sets depending on the game’s environment (e.g., space-themed or medieval-themed).

#### Java Code Example:

```java
// Abstract Factory Interface
interface GUIFactory {
    Button createButton();
    ScrollBar createScrollBar();
}

// Concrete factory for Windows
class WindowsFactory implements GUIFactory {
    @Override
    public Button createButton() {
        return new WindowsButton();
    }

    @Override
    public ScrollBar createScrollBar() {
        return new WindowsScrollBar();
    }
}

// Concrete factory for MacOS
class MacFactory implements GUIFactory {
    @Override
    public Button createButton() {
        return new MacButton();
    }

    @Override
    public ScrollBar createScrollBar() {
        return new MacScrollBar();
    }
}

// Example of a Button
interface Button {
    void paint();
}

class WindowsButton implements Button {
    @Override
    public void paint() {
        System.out.println("Rendering Windows button");
    }
}

class MacButton implements Button {
    @Override
    public void paint() {
        System.out.println("Rendering Mac button");
    }
}

// Example of a ScrollBar
interface ScrollBar {
    void scroll();
}

class WindowsScrollBar implements ScrollBar {
    @Override
    public void scroll() {
        System.out.println("Scrolling Windows scrollbar");
    }
}

class MacScrollBar implements ScrollBar {
    @Override
    public void scroll() {
        System.out.println("Scrolling Mac scrollbar");
    }
}
```

#### Usage Example:

```java
public class Main {
    public static void main(String[] args) {
        GUIFactory factory = new WindowsFactory();  // This can be dynamically switched to MacFactory
        Button button = factory.createButton();
        ScrollBar scrollBar = factory.createScrollBar();

        button.paint();  // Outputs: Rendering Windows button
        scrollBar.scroll();  // Outputs: Scrolling Windows scrollbar
    }
}
```

### Practical Considerations:
- **Consistency**: Abstract Factory helps ensure that products that belong together are created together, ensuring compatibility between related objects.
- **Modularity**: It abstracts the system from platform-specific code, making it easier to switch between different object families.
- **Complexity**: While powerful, Abstract Factory can lead to more complex code structures when creating large families of products.

---

### 4. Builder Design Pattern

#### Overview:
The **Builder** pattern separates the construction of a complex object from its representation, allowing the same construction process to create different representations. It’s especially useful when an object has many optional attributes or when the construction process is complex.

#### Real-world Usage:
- **Building complex objects**: In applications like car configurators or pizza order systems, the final product can have a variety of attributes, and Builder helps manage optional features.
- **Object creation with stepwise configuration**: In applications where objects require a series of steps to be fully configured (e.g., computers or user profiles), Builder offers a clear and maintainable solution.

#### Java Code Example:

```java
public class Computer {
    private String CPU;
    private String RAM;
    private String storage;
    private boolean hasGraphicsCard;

    private Computer(Builder builder) {
        this.CPU = builder.CPU;
        this.RAM = builder.RAM;
        this.storage = builder.storage;
        this.hasGraphicsCard = builder.hasGraphicsCard;
    }

    public static class Builder {
        private String CPU;
        private String RAM;
        private String storage;
        private boolean hasGraphicsCard;

        public Builder(String CPU, String RAM) {
            this.CPU = CPU;
            this.RAM = RAM;
        }

        public Builder setStorage(String storage) {
            this.storage = storage;
            return this;
        }

        public Builder setGraphicsCard(boolean hasGraphicsCard) {
            this.hasGraphicsCard = hasGraphicsCard;
            return this;
        }

        public Computer build() {
            return new Computer(this);
        }
    }

    @Override
    public String toString() {
        return "Computer [CPU=" + CPU + ", RAM=" + RAM + ", storage=" + storage + ", hasGraphicsCard=" + hasGraphicsCard + "]";
    }
}
```

#### Usage Example

:

```java
public class Main {
    public static void main(String[] args) {
        Computer computer = new Computer.Builder("Intel i7", "16GB")
                .setStorage("512GB SSD")
                .setGraphicsCard(true)
                .build();

        System.out.println(computer);
    }
}
```
#### Solution with Lombok:
Lombok automates the Builder pattern using the `@Builder` annotation, significantly reducing boilerplate code.

```java
import lombok.Builder;
import lombok.ToString;

@Builder
@ToString
public class ComputerLombok {
    private String CPU;
    private String RAM;
    private String storage;
    private boolean hasGraphicsCard;
}
```

#### Usage with Lombok:
```java
public class Main {
    public static void main(String[] args) {
        ComputerLombok computer = ComputerLombok.builder()
                .CPU("Intel i7")
                .RAM("16GB")
                .storage("512GB SSD")
                .hasGraphicsCard(true)
                .build();

        System.out.println(computer);
    }
}
```

### Practical Considerations:
- **Stepwise construction**: Builder allows you to construct an object step by step, making the code more readable and maintainable.
- **Avoiding telescoping constructors**: In cases where there are multiple optional parameters, Builder avoids large constructor signatures and gives flexibility in object creation.
- **Immutability**: Objects built with a Builder are often immutable, improving safety and clarity in multi-threaded contexts.

---

## Conclusion

- **Singleton** is best when you need one instance of a class across the system, like for database connections or configuration managers.
- **Factory Method** is suitable for flexible and scalable object creation where subclasses can define how to instantiate certain types.
- **Abstract Factory** provides an elegant way to handle object creation for systems that need to support multiple families of related products, like cross-platform UI elements.
- **Builder** is highly effective for constructing complex objects with many optional parameters or configuration steps.

---

## Exercises:

### 1. **Document Editor**

You are tasked with developing a **document editor** that supports multiple file formats (e.g., PDF, Word, HTML). Each format requires a different way of saving and displaying content. The core logic of the editor should not be tightly coupled with specific file format types. Your goal is to implement a **flexible solution** where new document formats can be added easily in the future, and the correct document type (PDF, Word, HTML) is instantiated based on the user's selection **without modifying the editor’s code**.

---

### 2. **Car Configuration**

You are designing an application for **customizing and ordering cars**. Each car model can be configured with various options:

- **Engine type** (e.g., V6, V8)
- **Transmission** (manual or automatic)
- **Interior features** (leather seats, GPS, sound system)
- **Exterior options** (color, rims, sunroof)
- **Safety features** (ABS, airbags, rear camera)

Some configurations are optional, and not all cars have the same set of available options. Your task is to create a **flexible, step-by-step solution** that allows car configuration, ensuring the final car object is valid and ready for ordering.

---

### Bonus Tasks:

1. **Add Unit Tests**: Ensure **85% code coverage** for both exercises.
2. **Combine the Exercises**: Create a more complex solution by combining both exercises. For example, build a **Car Management System App** where you can create documents that describe the configured cars.
