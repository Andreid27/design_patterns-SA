package org.example.creational.factory;

/**
 * Document interface defining common operations for all document types.
 * This abstraction allows the editor to work with any document format
 * without being coupled to specific implementations.
 */
public interface Document {

    /**
     * Opens the document for editing.
     */
    void open();

    /**
     * Saves the document in its native format.
     */
    void save();

    /**
     * Displays the document content in the appropriate viewer.
     */
    void display();

    /**
     * Sets the content of the document.
     * @param content the content to set
     */
    void setContent(String content);

    /**
     * Gets the current content of the document.
     * @return the document content
     */
    String getContent();
}
