package org.example.creational.factory;

public class HtmlDocument implements Document {

    private String content;

    @Override
    public void open() {
        System.out.println("Opening HTML document...");
    }

    @Override
    public void save() {
        System.out.println("Saving HTML document with markup tags and stylesheet references...");
    }

    @Override
    public void display() {
        System.out.println("Rendering HTML document in browser view");
        if (content != null && !content.isEmpty()) {
            System.out.println("<html><body>" + content + "</body></html>");
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
