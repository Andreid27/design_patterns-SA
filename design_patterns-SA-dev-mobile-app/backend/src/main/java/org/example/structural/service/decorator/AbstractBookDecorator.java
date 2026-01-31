package org.example.structural.service.decorator;

public abstract class AbstractBookDecorator implements BookComponent {

    protected final BookComponent wrappedBook;

    public AbstractBookDecorator(BookComponent wrappedBook) {
        this.wrappedBook = wrappedBook;
    }

    @Override
    public Long getId() {
        return wrappedBook.getId();
    }

    @Override
    public String getTitle() {
        return wrappedBook.getTitle();
    }

    @Override
    public String getAuthor() {
        return wrappedBook.getAuthor();
    }

    @Override
    public double getPrice() {
        return wrappedBook.getPrice();
    }

    @Override
    public String getDescription() {
        return wrappedBook.getDescription();
    }
}
