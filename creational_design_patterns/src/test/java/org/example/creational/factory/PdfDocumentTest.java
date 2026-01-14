package org.example.creational.factory;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("PdfDocument Tests")
class PdfDocumentTest {

    private PdfDocument document;
    private ByteArrayOutputStream outputStream;
    private PrintStream originalOut;

    @BeforeEach
    void setUp() {
        document = new PdfDocument();
        outputStream = new ByteArrayOutputStream();
        originalOut = System.out;
        System.setOut(new PrintStream(outputStream));
    }

    @Nested
    @DisplayName("Basic Operations")
    class BasicOperations {

        @Test
        @DisplayName("Should open PDF document")
        void shouldOpenDocument() {
            document.open();

            String output = outputStream.toString();
            assertTrue(output.contains("Opening PDF document"));
        }

        @Test
        @DisplayName("Should save PDF document with compression")
        void shouldSaveDocument() {
            document.save();

            String output = outputStream.toString();
            assertTrue(output.contains("Saving PDF document"));
            assertTrue(output.contains("compression"));
        }

        @Test
        @DisplayName("Should display PDF document in reader view")
        void shouldDisplayDocument() {
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("Displaying PDF document"));
            assertTrue(output.contains("reader view"));
        }
    }

    @Nested
    @DisplayName("Content Management")
    class ContentManagement {

        @Test
        @DisplayName("Should set and get content")
        void shouldSetAndGetContent() {
            String content = "Test PDF Content";
            document.setContent(content);

            assertEquals(content, document.getContent());
        }

        @Test
        @DisplayName("Should return null for unset content")
        void shouldReturnNullForUnsetContent() {
            assertNull(document.getContent());
        }

        @Test
        @DisplayName("Should display content when set")
        void shouldDisplayContentWhenSet() {
            document.setContent("Important Data");
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("Important Data"));
        }
    }
}
