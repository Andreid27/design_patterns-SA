package org.example.structural.utils;

import org.example.structural.dto.BookDto;
import org.example.structural.entity.Book;
import org.example.structural.service.decorator.BookComponent;

public class BookMapper {

    public static BookDto toDTO(Book book) {
        BookDto dto = new BookDto();
        dto.setId(book.getId());
        dto.setTitle(book.getTitle());
        dto.setAuthor(book.getAuthor());
        dto.setPrice(book.getPrice());
        dto.setDescription(book.getDescription());
        return dto;
    }

    public static Book toEntity(BookDto dto) {
        Book book = new Book();
        book.setId(dto.getId());
        book.setTitle(dto.getTitle());
        book.setAuthor(dto.getAuthor());
        book.setPrice(dto.getPrice());
        return book;
    }

    public static BookDto toDTO(BookComponent component) {
        BookDto dto = new BookDto();
        dto.setId(component.getId());
        dto.setTitle(component.getTitle());
        dto.setAuthor(component.getAuthor());
        dto.setPrice(component.getPrice());
        dto.setDescription(component.getDescription());
        return dto;
    }
}
