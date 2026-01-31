package org.example.structural.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.example.structural.dto.BookDto;
import org.example.structural.entity.Book;
import org.example.structural.service.LibraryFacade;
import org.example.structural.utils.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/books")
@Tag(name = "Library", description = "Library Management API")
public class LibraryController {

    private final LibraryFacade libraryFacade;

    @Autowired
    public LibraryController(LibraryFacade libraryFacade) {
        this.libraryFacade = libraryFacade;
    }

    @Operation(summary = "Retrieve all books")
    @GetMapping
    public List<BookDto> getAllBooks() {
        return libraryFacade.getAllBooks()
                .stream()
                .map(BookMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Operation(summary = "Get a book by ID")
    @GetMapping("/{id}")
    public ResponseEntity<BookDto> getBookById(
            @Parameter(description = "ID of the book") @PathVariable Long id) {
        return libraryFacade.getBookById(id)
                .map(BookMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @Operation(summary = "Add a new book")
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public BookDto addBook(@RequestBody BookDto bookDto) {
        Book book = BookMapper.toEntity(bookDto);
        Book savedBook = libraryFacade.addBook(book);
        return BookMapper.toDTO(savedBook);
    }

    @Operation(summary = "Update an existing book")
    @PutMapping("/{id}")
    public ResponseEntity<BookDto> updateBook(
            @PathVariable Long id,
            @RequestBody BookDto updatedBookDto) {
        Book book = BookMapper.toEntity(updatedBookDto);
        return libraryFacade.updateBook(id, book)
                .map(BookMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @Operation(summary = "Delete a book by ID")
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteBook(@PathVariable Long id) {
        if (libraryFacade.deleteBook(id)) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }

    @Operation(summary = "Search books by title")
    @GetMapping("/search/title")
    public List<BookDto> searchByTitle(@RequestParam String title) {
        return libraryFacade.searchByTitle(title)
                .stream()
                .map(BookMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Operation(summary = "Search books by author")
    @GetMapping("/search/author")
    public List<BookDto> searchByAuthor(@RequestParam String author) {
        return libraryFacade.searchByAuthor(author)
                .stream()
                .map(BookMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Operation(summary = "Get all featured books")
    @GetMapping("/featured")
    public List<BookDto> getFeaturedBooks() {
        return libraryFacade.getFeaturedBooks()
                .stream()
                .map(BookMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Operation(summary = "Get all bestseller books")
    @GetMapping("/bestsellers")
    public List<BookDto> getBestsellers() {
        return libraryFacade.getBestsellers()
                .stream()
                .map(BookMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Operation(summary = "Get a single featured book")
    @GetMapping("/{id}/featured")
    public ResponseEntity<BookDto> getFeaturedBook(@PathVariable Long id) {
        return libraryFacade.getFeaturedBook(id)
                .map(BookMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @Operation(summary = "Get a single bestseller book")
    @GetMapping("/{id}/bestseller")
    public ResponseEntity<BookDto> getBestsellerBook(@PathVariable Long id) {
        return libraryFacade.getBestsellerBook(id)
                .map(BookMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @Operation(summary = "Get a featured bestseller book")
    @GetMapping("/{id}/featured-bestseller")
    public ResponseEntity<BookDto> getFeaturedBestseller(@PathVariable Long id) {
        return libraryFacade.getFeaturedBestseller(id)
                .map(BookMapper::toDTO)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}