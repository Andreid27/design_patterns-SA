package org.example.creational.builder;

import org.example.creational.CarConfiguration;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("CarConfiguration Main Tests")
class CarConfigurationTest {

    private ByteArrayOutputStream outputStream;

    @BeforeEach
    void setUp() {
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @Test
    @DisplayName("Should run main method and display all car configurations")
    void shouldRunMainAndDisplayAllConfigurations() {
        CarConfiguration.main(new String[]{});

        String output = outputStream.toString();

        assertTrue(output.contains("Basic Economy Car"));
        assertTrue(output.contains("Economy Sedan"));
        assertTrue(output.contains("1.6L I4"));

        assertTrue(output.contains("Sports Car with Performance Options"));
        assertTrue(output.contains("Sports Coupe"));
        assertTrue(output.contains("V8 Twin-Turbo"));

        assertTrue(output.contains("Luxury SUV with Full Options"));
        assertTrue(output.contains("Luxury SUV"));
        assertTrue(output.contains("V6 Hybrid"));

        assertTrue(output.contains("Family Minivan with Safety Focus"));
        assertTrue(output.contains("Family Minivan"));
    }
}
