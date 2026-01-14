package org.example.creational.factory;

import org.example.creational.DocumentEditor;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("DocumentEditor Tests")
class DocumentEditorTest {

    private DocumentEditor editor;
    private ByteArrayOutputStream outputStream;

    @BeforeEach
    void setUp() {
        editor = new DocumentEditor();
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @Nested
    @DisplayName("Document Operations")
    class DocumentOperations {

        @Test
        @DisplayName("Should open PDF document")
        void shouldOpenPdfDocument() {
            editor.openDocument("PDF");

            assertNotNull(editor.getCurrentDocument());
            assertInstanceOf(PdfDocument.class, editor.getCurrentDocument());
        }

        @Test
        @DisplayName("Should open Word document")
        void shouldOpenWordDocument() {
            editor.openDocument("Word");

            assertNotNull(editor.getCurrentDocument());
            assertInstanceOf(WordDocument.class, editor.getCurrentDocument());
        }

        @Test
        @DisplayName("Should open HTML document")
        void shouldOpenHtmlDocument() {
            editor.openDocument("HTML");

            assertNotNull(editor.getCurrentDocument());
            assertInstanceOf(HtmlDocument.class, editor.getCurrentDocument());
        }

        @Test
        @DisplayName("Should save current document")
        void shouldSaveCurrentDocument() {
            editor.openDocument("PDF");
            editor.saveDocument();

            String output = outputStream.toString();
            assertTrue(output.contains("Saving PDF document"));
        }

        @Test
        @DisplayName("Should display current document")
        void shouldDisplayCurrentDocument() {
            editor.openDocument("Word");
            editor.displayDocument();

            String output = outputStream.toString();
            assertTrue(output.contains("Displaying Word document"));
        }

        @Test
        @DisplayName("Should set content on current document")
        void shouldSetContentOnCurrentDocument() {
            editor.openDocument("HTML");
            editor.setContent("Test content");

            assertEquals("Test content", editor.getCurrentDocument().getContent());
        }
    }

    @Nested
    @DisplayName("No Document Open")
    class NoDocumentOpen {

        @Test
        @DisplayName("Should handle save when no document is open")
        void shouldHandleSaveWithNoDocument() {
            editor.saveDocument();

            String output = outputStream.toString();
            assertTrue(output.contains("No document is currently open"));
        }

        @Test
        @DisplayName("Should handle display when no document is open")
        void shouldHandleDisplayWithNoDocument() {
            editor.displayDocument();

            String output = outputStream.toString();
            assertTrue(output.contains("No document is currently open"));
        }

        @Test
        @DisplayName("Should handle set content when no document is open")
        void shouldHandleSetContentWithNoDocument() {
            editor.setContent("Test");

            String output = outputStream.toString();
            assertTrue(output.contains("No document is currently open"));
        }

        @Test
        @DisplayName("Should return null for current document when none open")
        void shouldReturnNullForCurrentDocument() {
            assertNull(editor.getCurrentDocument());
        }
    }
}
