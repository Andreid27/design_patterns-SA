package org.example.structural.dto;

public class BookDto {
    private Long id;
    private String title;
    private String author;
    private double price;
    private String description;

    public BookDto() {
    }

    public BookDto(Long id, String title, String author, double price, String description) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.price = price;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
