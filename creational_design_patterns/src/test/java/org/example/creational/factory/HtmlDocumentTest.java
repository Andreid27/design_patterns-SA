package org.example.creational.factory;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("HtmlDocument Tests")
class HtmlDocumentTest {

    private HtmlDocument document;
    private ByteArrayOutputStream outputStream;

    @BeforeEach
    void setUp() {
        document = new HtmlDocument();
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @Nested
    @DisplayName("Basic Operations")
    class BasicOperations {

        @Test
        @DisplayName("Should open HTML document")
        void shouldOpenDocument() {
            document.open();

            String output = outputStream.toString();
            assertTrue(output.contains("Opening HTML document"));
        }

        @Test
        @DisplayName("Should save HTML document with markup")
        void shouldSaveDocument() {
            document.save();

            String output = outputStream.toString();
            assertTrue(output.contains("Saving HTML document"));
            assertTrue(output.contains("markup"));
        }

        @Test
        @DisplayName("Should display HTML document in browser view")
        void shouldDisplayDocument() {
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("Rendering HTML document"));
            assertTrue(output.contains("browser"));
        }
    }

    @Nested
    @DisplayName("Content Management")
    class ContentManagement {

        @Test
        @DisplayName("Should set and get content")
        void shouldSetAndGetContent() {
            String content = "<p>Test content</p>";
            document.setContent(content);

            assertEquals(content, document.getContent());
        }

        @Test
        @DisplayName("Should return null for unset content")
        void shouldReturnNullForUnsetContent() {
            assertNull(document.getContent());
        }

        @Test
        @DisplayName("Should wrap content in HTML tags when displaying")
        void shouldWrapContentInHtmlTags() {
            document.setContent("<h1>Title</h1>");
            document.display();

            String output = outputStream.toString();
            assertTrue(output.contains("<html><body>"));
            assertTrue(output.contains("</body></html>"));
            assertTrue(output.contains("<h1>Title</h1>"));
        }
    }
}
