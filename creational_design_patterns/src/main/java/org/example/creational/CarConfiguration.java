package org.example.creational;

import org.example.creational.builder.Car;

/**
 * Car Configuration application demonstrating the Builder pattern.
 * This pattern allows flexible, step-by-step construction of Car objects
 * with various optional features.
 */
public class CarConfiguration {

    public static void main(String[] args) {

        System.out.println("=== Basic Economy Car ===");
        Car economyCar = new Car.Builder("Economy Sedan")
                .engine("1.6L I4")
                .transmission("Manual")
                .color("Silver")
                .build();
        System.out.println(economyCar);

        System.out.println("\n=== Sports Car with Performance Options ===");
        Car sportsCar = new Car.Builder("Sports Coupe")
                .engine("V8 Twin-Turbo")
                .transmission("Automatic")
                .color("Racing Red")
                .rims("19-inch Alloy")
                .withSunroof()
                .withLeatherSeats()
                .withSoundSystem()
                .withSafetyPackage()
                .build();
        System.out.println(sportsCar);

        System.out.println("\n=== Luxury SUV with Full Options ===");
        Car luxurySuv = new Car.Builder("Luxury SUV")
                .engine("V6 Hybrid")
                .transmission("Automatic")
                .color("Midnight Black")
                .rims("21-inch Chrome")
                .withLuxuryInterior()
                .withSunroof()
                .withSafetyPackage()
                .build();
        System.out.println(luxurySuv);

        System.out.println("\n=== Family Minivan with Safety Focus ===");
        Car familyVan = new Car.Builder("Family Minivan")
                .engine("V6")
                .transmission("Automatic")
                .color("Ocean Blue")
                .withGPS()
                .withRearCamera()
                .withAirbags()
                .withABS()
                .build();
        System.out.println(familyVan);
    }
}
