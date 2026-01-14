package org.example.creational;

import org.example.creational.factory.Document;
import org.example.creational.factory.DocumentFactory;

/**
 * Document Editor application demonstrating the Factory Method pattern.
 * The editor is decoupled from specific document types, allowing new formats
 * to be added without modifying this class.
 */
public class DocumentEditor {

    private Document currentDocument;

    /**
     * Opens a document of the specified type.
     *
     * @param type the document type to open (PDF, Word, or HTML)
     */
    public void openDocument(String type) {
        currentDocument = DocumentFactory.createDocument(type);
        currentDocument.open();
    }

    /**
     * Saves the currently open document.
     */
    public void saveDocument() {
        if (currentDocument != null) {
            currentDocument.save();
        } else {
            System.out.println("No document is currently open.");
        }
    }

    /**
     * Displays the currently open document.
     */
    public void displayDocument() {
        if (currentDocument != null) {
            currentDocument.display();
        } else {
            System.out.println("No document is currently open.");
        }
    }

    /**
     * Sets content for the currently open document.
     *
     * @param content the content to set
     */
    public void setContent(String content) {
        if (currentDocument != null) {
            currentDocument.setContent(content);
        } else {
            System.out.println("No document is currently open.");
        }
    }

    /**
     * Gets the currently open document.
     *
     * @return the current document or null if none is open
     */
    public Document getCurrentDocument() {
        return currentDocument;
    }

    public static void main(String[] args) {
        DocumentEditor editor = new DocumentEditor();

        System.out.println("=== Working with PDF Document ===");
        editor.openDocument("PDF");
        editor.setContent("This is a PDF document with important data.");
        editor.displayDocument();
        editor.saveDocument();

        System.out.println("\n=== Working with Word Document ===");
        editor.openDocument("Word");
        editor.setContent("This is a Word document with formatted text.");
        editor.displayDocument();
        editor.saveDocument();

        System.out.println("\n=== Working with HTML Document ===");
        editor.openDocument("HTML");
        editor.setContent("<h1>Welcome</h1><p>This is an HTML document.</p>");
        editor.displayDocument();
        editor.saveDocument();
    }
}
