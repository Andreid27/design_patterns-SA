package org.example.creational.factory;

/**
 * Factory class for creating document instances.
 * Implements the Factory Method pattern to decouple document creation
 * from the client code, allowing new document types to be added
 * without modifying the editor.
 */
public class DocumentFactory {

    /**
     * Creates a document instance based on the specified type.
     *
     * @param type the document type (PDF, Word, or HTML)
     * @return the appropriate Document implementation
     * @throws IllegalArgumentException if the document type is unknown
     */
    public static Document createDocument(String type) {
        if (type == null || type.isEmpty()) {
            throw new IllegalArgumentException("Document type cannot be null or empty");
        }

        switch (type.toUpperCase()) {
            case "PDF":
                return new PdfDocument();
            case "WORD":
                return new WordDocument();
            case "HTML":
                return new HtmlDocument();
            default:
                throw new IllegalArgumentException("Unknown document type: " + type);
        }
    }
}
