package org.example.creational.factory;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("WordDocument Tests")
class WordDocumentTest {

    private WordDocument document;
    private ByteArrayOutputStream outputStream;

    @BeforeEach
    void setUp() {
        document = new WordDocument();
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @Nested
    @DisplayName("Basic Operations")
    class BasicOperations {

        @Test
        @DisplayName("Should open Word document")
        void shouldOpenDocument() {
            document.open();

            String output = outputStream.toString();
            assertTrue(output.contains("Opening Word document"));
        }

        @Test
        @DisplayName("Should save Word document in DOCX format")
        void shouldSaveDocument() {
            document.save();

            String output = outputStream.toString();
            assertTrue(output.contains("Saving Word document"));
            assertTrue(output.contains("DOCX"));
        }

        @Test
        @DisplayName("Should display Word document with rich text")
        void shouldDisplayDocument() {
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("Displaying Word document"));
            assertTrue(output.contains("rich text"));
        }
    }

    @Nested
    @DisplayName("Content Management")
    class ContentManagement {

        @Test
        @DisplayName("Should set and get content")
        void shouldSetAndGetContent() {
            String content = "Test Word Content";
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
            document.setContent("Formatted Text");
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("Formatted Text"));
        }
    }
}
