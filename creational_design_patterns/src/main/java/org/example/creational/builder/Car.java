package org.example.creational.builder;

/**
 * Car class implementing the Builder pattern for flexible, step-by-step configuration.
 * This pattern allows constructing complex car objects with various optional features
 * while ensuring the final object is valid and immutable.
 */
public class Car {

    private final String model;
    private final String engine;
    private final String transmission;
    private final String color;
    private final String rims;
    private final boolean hasLeatherSeats;
    private final boolean hasGPS;
    private final boolean hasSoundSystem;
    private final boolean hasSunroof;
    private final boolean hasABS;
    private final boolean hasAirbags;
    private final boolean hasRearCamera;

    private Car(Builder builder) {
        this.model = builder.model;
        this.engine = builder.engine;
        this.transmission = builder.transmission;
        this.color = builder.color;
        this.rims = builder.rims;
        this.hasLeatherSeats = builder.hasLeatherSeats;
        this.hasGPS = builder.hasGPS;
        this.hasSoundSystem = builder.hasSoundSystem;
        this.hasSunroof = builder.hasSunroof;
        this.hasABS = builder.hasABS;
        this.hasAirbags = builder.hasAirbags;
        this.hasRearCamera = builder.hasRearCamera;
    }

    public String getModel() {
        return model;
    }

    public String getEngine() {
        return engine;
    }

    public String getTransmission() {
        return transmission;
    }

    public String getColor() {
        return color;
    }

    public String getRims() {
        return rims;
    }

    public boolean hasLeatherSeats() {
        return hasLeatherSeats;
    }

    public boolean hasGPS() {
        return hasGPS;
    }

    public boolean hasSoundSystem() {
        return hasSoundSystem;
    }

    public boolean hasSunroof() {
        return hasSunroof;
    }

    public boolean hasABS() {
        return hasABS;
    }

    public boolean hasAirbags() {
        return hasAirbags;
    }

    public boolean hasRearCamera() {
        return hasRearCamera;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Car Configuration:\n");
        sb.append("  Model: ").append(model).append("\n");
        sb.append("  Engine: ").append(engine).append("\n");
        sb.append("  Transmission: ").append(transmission).append("\n");
        sb.append("  Color: ").append(color).append("\n");
        sb.append("  Rims: ").append(rims).append("\n");
        sb.append("  Interior Features:\n");
        sb.append("    - Leather Seats: ").append(hasLeatherSeats ? "Yes" : "No").append("\n");
        sb.append("    - GPS Navigation: ").append(hasGPS ? "Yes" : "No").append("\n");
        sb.append("    - Premium Sound System: ").append(hasSoundSystem ? "Yes" : "No").append("\n");
        sb.append("  Exterior Options:\n");
        sb.append("    - Sunroof: ").append(hasSunroof ? "Yes" : "No").append("\n");
        sb.append("  Safety Features:\n");
        sb.append("    - ABS: ").append(hasABS ? "Yes" : "No").append("\n");
        sb.append("    - Airbags: ").append(hasAirbags ? "Yes" : "No").append("\n");
        sb.append("    - Rear Camera: ").append(hasRearCamera ? "Yes" : "No");
        return sb.toString();
    }

    /**
     * Builder class for constructing Car instances with a fluent API.
     * Required parameters are set through the constructor, while optional
     * features can be configured through chained method calls.
     */
    public static class Builder {

        private final String model;
        private String engine = "Standard";
        private String transmission = "Manual";
        private String color = "White";
        private String rims = "Standard";
        private boolean hasLeatherSeats = false;
        private boolean hasGPS = false;
        private boolean hasSoundSystem = false;
        private boolean hasSunroof = false;
        private boolean hasABS = false;
        private boolean hasAirbags = false;
        private boolean hasRearCamera = false;

        /**
         * Creates a new Builder with the required car model.
         *
         * @param model the car model name (required)
         */
        public Builder(String model) {
            if (model == null || model.isEmpty()) {
                throw new IllegalArgumentException("Car model is required");
            }
            this.model = model;
        }

        /**
         * Sets the engine type.
         *
         * @param engine the engine type (e.g., V6, V8)
         * @return this builder for method chaining
         */
        public Builder engine(String engine) {
            this.engine = engine;
            return this;
        }

        /**
         * Sets the transmission type.
         *
         * @param transmission the transmission type (Manual or Automatic)
         * @return this builder for method chaining
         */
        public Builder transmission(String transmission) {
            this.transmission = transmission;
            return this;
        }

        /**
         * Sets the exterior color.
         *
         * @param color the car color
         * @return this builder for method chaining
         */
        public Builder color(String color) {
            this.color = color;
            return this;
        }

        /**
         * Sets the rim type.
         *
         * @param rims the rim type
         * @return this builder for method chaining
         */
        public Builder rims(String rims) {
            this.rims = rims;
            return this;
        }

        /**
         * Adds leather seats to the configuration.
         *
         * @return this builder for method chaining
         */
        public Builder withLeatherSeats() {
            this.hasLeatherSeats = true;
            return this;
        }

        /**
         * Adds GPS navigation system.
         *
         * @return this builder for method chaining
         */
        public Builder withGPS() {
            this.hasGPS = true;
            return this;
        }

        /**
         * Adds premium sound system.
         *
         * @return this builder for method chaining
         */
        public Builder withSoundSystem() {
            this.hasSoundSystem = true;
            return this;
        }

        /**
         * Adds sunroof option.
         *
         * @return this builder for method chaining
         */
        public Builder withSunroof() {
            this.hasSunroof = true;
            return this;
        }

        /**
         * Adds ABS (Anti-lock Braking System).
         *
         * @return this builder for method chaining
         */
        public Builder withABS() {
            this.hasABS = true;
            return this;
        }

        /**
         * Adds airbags safety feature.
         *
         * @return this builder for method chaining
         */
        public Builder withAirbags() {
            this.hasAirbags = true;
            return this;
        }

        /**
         * Adds rear camera for parking assistance.
         *
         * @return this builder for method chaining
         */
        public Builder withRearCamera() {
            this.hasRearCamera = true;
            return this;
        }

        /**
         * Adds complete safety package (ABS, Airbags, Rear Camera).
         *
         * @return this builder for method chaining
         */
        public Builder withSafetyPackage() {
            this.hasABS = true;
            this.hasAirbags = true;
            this.hasRearCamera = true;
            return this;
        }

        /**
         * Adds complete luxury interior package (Leather Seats, GPS, Sound System).
         *
         * @return this builder for method chaining
         */
        public Builder withLuxuryInterior() {
            this.hasLeatherSeats = true;
            this.hasGPS = true;
            this.hasSoundSystem = true;
            return this;
        }

        /**
         * Builds and returns the configured Car instance.
         *
         * @return a new immutable Car object
         */
        public Car build() {
            return new Car(this);
        }
    }
}
