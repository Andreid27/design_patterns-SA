package org.example.creational.builder;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("Car Builder Tests")
class CarTest {

    @Nested
    @DisplayName("Required Parameters")
    class RequiredParameters {

        @Test
        @DisplayName("Should create car with required model")
        void shouldCreateCarWithRequiredModel() {
            Car car = new Car.Builder("Test Model").build();

            assertEquals("Test Model", car.getModel());
        }

        @Test
        @DisplayName("Should throw exception for null model")
        void shouldThrowExceptionForNullModel() {
            assertThrows(
                    IllegalArgumentException.class,
                    () -> new Car.Builder(null)
            );
        }

        @Test
        @DisplayName("Should throw exception for empty model")
        void shouldThrowExceptionForEmptyModel() {
            assertThrows(
                    IllegalArgumentException.class,
                    () -> new Car.Builder("")
            );
        }
    }

    @Nested
    @DisplayName("Default Values")
    class DefaultValues {

        @Test
        @DisplayName("Should have default engine")
        void shouldHaveDefaultEngine() {
            Car car = new Car.Builder("Model").build();
            assertEquals("Standard", car.getEngine());
        }

        @Test
        @DisplayName("Should have default transmission")
        void shouldHaveDefaultTransmission() {
            Car car = new Car.Builder("Model").build();
            assertEquals("Manual", car.getTransmission());
        }

        @Test
        @DisplayName("Should have default color")
        void shouldHaveDefaultColor() {
            Car car = new Car.Builder("Model").build();
            assertEquals("White", car.getColor());
        }

        @Test
        @DisplayName("Should have default rims")
        void shouldHaveDefaultRims() {
            Car car = new Car.Builder("Model").build();
            assertEquals("Standard", car.getRims());
        }

        @Test
        @DisplayName("Should have no optional features by default")
        void shouldHaveNoOptionalFeaturesByDefault() {
            Car car = new Car.Builder("Model").build();

            assertFalse(car.hasLeatherSeats());
            assertFalse(car.hasGPS());
            assertFalse(car.hasSoundSystem());
            assertFalse(car.hasSunroof());
            assertFalse(car.hasABS());
            assertFalse(car.hasAirbags());
            assertFalse(car.hasRearCamera());
        }
    }

    @Nested
    @DisplayName("Engine and Transmission")
    class EngineAndTransmission {

        @Test
        @DisplayName("Should set engine type")
        void shouldSetEngineType() {
            Car car = new Car.Builder("Sport")
                    .engine("V8 Twin-Turbo")
                    .build();

            assertEquals("V8 Twin-Turbo", car.getEngine());
        }

        @Test
        @DisplayName("Should set transmission type")
        void shouldSetTransmissionType() {
            Car car = new Car.Builder("Sedan")
                    .transmission("Automatic")
                    .build();

            assertEquals("Automatic", car.getTransmission());
        }
    }

    @Nested
    @DisplayName("Exterior Options")
    class ExteriorOptions {

        @Test
        @DisplayName("Should set color")
        void shouldSetColor() {
            Car car = new Car.Builder("Model")
                    .color("Racing Red")
                    .build();

            assertEquals("Racing Red", car.getColor());
        }

        @Test
        @DisplayName("Should set rims")
        void shouldSetRims() {
            Car car = new Car.Builder("Model")
                    .rims("19-inch Alloy")
                    .build();

            assertEquals("19-inch Alloy", car.getRims());
        }

        @Test
        @DisplayName("Should add sunroof")
        void shouldAddSunroof() {
            Car car = new Car.Builder("Model")
                    .withSunroof()
                    .build();

            assertTrue(car.hasSunroof());
        }
    }

    @Nested
    @DisplayName("Interior Features")
    class InteriorFeatures {

        @Test
        @DisplayName("Should add leather seats")
        void shouldAddLeatherSeats() {
            Car car = new Car.Builder("Model")
                    .withLeatherSeats()
                    .build();

            assertTrue(car.hasLeatherSeats());
        }

        @Test
        @DisplayName("Should add GPS")
        void shouldAddGPS() {
            Car car = new Car.Builder("Model")
                    .withGPS()
                    .build();

            assertTrue(car.hasGPS());
        }

        @Test
        @DisplayName("Should add sound system")
        void shouldAddSoundSystem() {
            Car car = new Car.Builder("Model")
                    .withSoundSystem()
                    .build();

            assertTrue(car.hasSoundSystem());
        }
    }

    @Nested
    @DisplayName("Safety Features")
    class SafetyFeatures {

        @Test
        @DisplayName("Should add ABS")
        void shouldAddABS() {
            Car car = new Car.Builder("Model")
                    .withABS()
                    .build();

            assertTrue(car.hasABS());
        }

        @Test
        @DisplayName("Should add airbags")
        void shouldAddAirbags() {
            Car car = new Car.Builder("Model")
                    .withAirbags()
                    .build();

            assertTrue(car.hasAirbags());
        }

        @Test
        @DisplayName("Should add rear camera")
        void shouldAddRearCamera() {
            Car car = new Car.Builder("Model")
                    .withRearCamera()
                    .build();

            assertTrue(car.hasRearCamera());
        }
    }

    @Nested
    @DisplayName("Feature Packages")
    class FeaturePackages {

        @Test
        @DisplayName("Should add safety package with all safety features")
        void shouldAddSafetyPackage() {
            Car car = new Car.Builder("Model")
                    .withSafetyPackage()
                    .build();

            assertTrue(car.hasABS());
            assertTrue(car.hasAirbags());
            assertTrue(car.hasRearCamera());
        }

        @Test
        @DisplayName("Should add luxury interior package with all interior features")
        void shouldAddLuxuryInteriorPackage() {
            Car car = new Car.Builder("Model")
                    .withLuxuryInterior()
                    .build();

            assertTrue(car.hasLeatherSeats());
            assertTrue(car.hasGPS());
            assertTrue(car.hasSoundSystem());
        }
    }

    @Nested
    @DisplayName("Method Chaining")
    class MethodChaining {

        @Test
        @DisplayName("Should support fluent method chaining")
        void shouldSupportFluentMethodChaining() {
            Car car = new Car.Builder("Luxury SUV")
                    .engine("V6 Hybrid")
                    .transmission("Automatic")
                    .color("Midnight Black")
                    .rims("21-inch Chrome")
                    .withLeatherSeats()
                    .withGPS()
                    .withSoundSystem()
                    .withSunroof()
                    .withABS()
                    .withAirbags()
                    .withRearCamera()
                    .build();

            assertEquals("Luxury SUV", car.getModel());
            assertEquals("V6 Hybrid", car.getEngine());
            assertEquals("Automatic", car.getTransmission());
            assertEquals("Midnight Black", car.getColor());
            assertEquals("21-inch Chrome", car.getRims());
            assertTrue(car.hasLeatherSeats());
            assertTrue(car.hasGPS());
            assertTrue(car.hasSoundSystem());
            assertTrue(car.hasSunroof());
            assertTrue(car.hasABS());
            assertTrue(car.hasAirbags());
            assertTrue(car.hasRearCamera());
        }
    }

    @Nested
    @DisplayName("ToString")
    class ToStringTests {

        @Test
        @DisplayName("Should produce readable string representation")
        void shouldProduceReadableStringRepresentation() {
            Car car = new Car.Builder("Test Car")
                    .engine("V8")
                    .withLeatherSeats()
                    .build();

            String result = car.toString();

            assertTrue(result.contains("Test Car"));
            assertTrue(result.contains("V8"));
            assertTrue(result.contains("Leather Seats: Yes"));
        }

        @Test
        @DisplayName("Should show all configuration sections")
        void shouldShowAllConfigurationSections() {
            Car car = new Car.Builder("Model").build();

            String result = car.toString();

            assertTrue(result.contains("Car Configuration:"));
            assertTrue(result.contains("Model:"));
            assertTrue(result.contains("Engine:"));
            assertTrue(result.contains("Interior Features:"));
            assertTrue(result.contains("Exterior Options:"));
            assertTrue(result.contains("Safety Features:"));
        }
    }
}
