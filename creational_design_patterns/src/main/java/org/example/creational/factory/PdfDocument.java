package org.example.creational.factory;

public class PdfDocument implements Document {

    private String content;

    @Override
    public void open() {
        System.out.println("Opening PDF document...");
    }

    @Override
    public void save() {
        System.out.println("Saving PDF document with binary encoding and compression...");
    }

    @Override
    public void display() {
        System.out.println("Displaying PDF document in reader view");
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
