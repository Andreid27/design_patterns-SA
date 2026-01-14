package org.example.creational.factory;

public class WordDocument implements Document {

    private String content;

    @Override
    public void open() {
        System.out.println("Opening Word document...");
    }

    @Override
    public void save() {
        System.out.println("Saving Word document in DOCX format with formatting metadata...");
    }

    @Override
    public void display() {
        System.out.println("Displaying Word document with rich text formatting");
        if (content != null && !content.isEmpty()) {
            System.out.println("Content: " + content);
        }
    }

    @Override
    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String getContent() {
        return content;
    }
}
