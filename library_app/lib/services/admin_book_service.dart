import 'package:dio/dio.dart';
import '../models/book.dart';
import '../core/constants.dart';
import 'api_service.dart';

/// Admin service for managing books (add, update, delete)
class AdminBookService {
  final ApiService _apiService;

  AdminBookService({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  /// Add a new book (POST /api/books)
  Future<Book> addBook(Book book) async {
    try {
      final response = await _apiService.dio.post(
        AppConstants.BOOKS_ENDPOINT,
        data: book.toJson(),
      );
      return Book.fromJson(response.data);
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  /// Update an existing book (PUT /api/books/{id})
  Future<Book> updateBook(int id, Book book) async {
    try {
      final response = await _apiService.dio.put(
        '${AppConstants.BOOKS_ENDPOINT}/$id',
        data: book.toJson(),
      );
      return Book.fromJson(response.data);
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  /// Delete a book by ID (DELETE /api/books/{id})
  Future<void> deleteBook(int id) async {
    try {
      await _apiService.dio.delete('${AppConstants.BOOKS_ENDPOINT}/$id');
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }
}
