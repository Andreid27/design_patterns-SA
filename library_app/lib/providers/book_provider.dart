import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/book_service.dart';

class BookProvider extends ChangeNotifier {
  final BookService _bookService = BookService();

  List<Book> _books = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<Book> get books => _books;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> fetchBooks() async {
    _setLoading(true);
    try {
      _books = await _bookService.getBooks();
      _errorMessage = '';
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> searchBooks(String query, String type) async {
    _setLoading(true);
    try {
      _books = await _bookService.searchBooks(query, type);
      _errorMessage = '';
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> filterFeatured() async {
    _setLoading(true);
    try {
      _books = await _bookService.getFeaturedBooks();
      _errorMessage = '';
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> filterBestsellers() async {
    _setLoading(true);
    try {
      _books = await _bookService.getBestsellers();
      _errorMessage = '';
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
