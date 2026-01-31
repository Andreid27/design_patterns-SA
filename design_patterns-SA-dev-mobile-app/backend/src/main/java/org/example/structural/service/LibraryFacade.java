package org.example.structural.service;

import org.example.structural.entity.Book;
import org.example.structural.service.decorator.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Component
public class LibraryFacade {

    private final BookService bookService;

    @Autowired
    public LibraryFacade(BookService bookService) {
        this.bookService = bookService;
    }

    public Book addBook(Book book) {
        return bookService.addBook(book);
    }

    public List<Book> getAllBooks() {
        return bookService.getAllBooks();
    }

    public Optional<Book> getBookById(Long id) {
        return bookService.getBookById(id);
    }

    public Optional<Book> updateBook(Long id, Book updatedBook) {
        return bookService.updateBook(id, updatedBook);
    }

    public boolean deleteBook(Long id) {
        return bookService.deleteBook(id);
    }

    public List<Book> searchByTitle(String title) {
        return bookService.findByTitleContaining(title);
    }

    public List<Book> searchByAuthor(String author) {
        return bookService.findByAuthor(author);
    }

    public List<BookComponent> getFeaturedBooks() {
        return bookService.getAllBooks().stream()
                .map(book -> new FeaturedBookDecorator(new BasicBook(book)))
                .collect(Collectors.toList());
    }

    public List<BookComponent> getBestsellers() {
        return bookService.getAllBooks().stream()
                .map(book -> new BestsellerBookDecorator(new BasicBook(book)))
                .collect(Collectors.toList());
    }

    public Optional<BookComponent> getFeaturedBook(Long id) {
        return bookService.getBookById(id)
                .map(book -> new FeaturedBookDecorator(new BasicBook(book)));
    }

    public Optional<BookComponent> getBestsellerBook(Long id) {
        return bookService.getBookById(id)
                .map(book -> new BestsellerBookDecorator(new BasicBook(book)));
    }

    public Optional<BookComponent> getFeaturedBestseller(Long id) {
        return bookService.getBookById(id)
                .map(book -> new FeaturedBookDecorator(
                        new BestsellerBookDecorator(new BasicBook(book))));
    }
}
