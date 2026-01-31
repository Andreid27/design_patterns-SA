package org.example.structural.service.decorator;

import org.example.structural.entity.Book;

public class BasicBook implements BookComponent {

    private final Book book;

    public BasicBook(Book book) {
        this.book = book;
    }

    @Override
    public Long getId() {
        return book.getId();
    }

    @Override
    public String getTitle() {
        return book.getTitle();
    }

    @Override
    public String getAuthor() {
        return book.getAuthor();
    }

    @Override
    public double getPrice() {
        return book.getPrice();
    }

    @Override
    public String getDescription() {
        return book.getDescription();
    }

    public Book getBook() {
        return book;
    }
}
