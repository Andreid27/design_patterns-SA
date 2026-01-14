package org.example.creational.factory;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("DocumentFactory Tests")
class DocumentFactoryTest {

    @Nested
    @DisplayName("Document Creation")
    class DocumentCreation {

        @Test
        @DisplayName("Should create PDF document for 'PDF' type")
        void shouldCreatePdfDocument() {
            Document document = DocumentFactory.createDocument("PDF");

            assertNotNull(document);
            assertInstanceOf(PdfDocument.class, document);
        }

        @Test
        @DisplayName("Should create Word document for 'Word' type")
        void shouldCreateWordDocument() {
            Document document = DocumentFactory.createDocument("Word");

            assertNotNull(document);
            assertInstanceOf(WordDocument.class, document);
        }

        @Test
        @DisplayName("Should create HTML document for 'HTML' type")
        void shouldCreateHtmlDocument() {
            Document document = DocumentFactory.createDocument("HTML");

            assertNotNull(document);
            assertInstanceOf(HtmlDocument.class, document);
        }

        @Test
        @DisplayName("Should handle case-insensitive type")
        void shouldHandleCaseInsensitiveType() {
            Document pdfLower = DocumentFactory.createDocument("pdf");
            Document wordMixed = DocumentFactory.createDocument("WoRd");
            Document htmlUpper = DocumentFactory.createDocument("HTML");

            assertInstanceOf(PdfDocument.class, pdfLower);
            assertInstanceOf(WordDocument.class, wordMixed);
            assertInstanceOf(HtmlDocument.class, htmlUpper);
        }
    }

    @Nested
    @DisplayName("Error Handling")
    class ErrorHandling {

        @Test
        @DisplayName("Should throw exception for unknown document type")
        void shouldThrowExceptionForUnknownType() {
            IllegalArgumentException exception = assertThrows(
                    IllegalArgumentException.class,
                    () -> DocumentFactory.createDocument("TXT")
            );

            assertTrue(exception.getMessage().contains("Unknown document type"));
        }

        @Test
        @DisplayName("Should throw exception for null type")
        void shouldThrowExceptionForNullType() {
            assertThrows(
                    IllegalArgumentException.class,
                    () -> DocumentFactory.createDocument(null)
            );
        }

        @Test
        @DisplayName("Should throw exception for empty type")
        void shouldThrowExceptionForEmptyType() {
            assertThrows(
                    IllegalArgumentException.class,
                    () -> DocumentFactory.createDocument("")
            );
        }
    }
}
