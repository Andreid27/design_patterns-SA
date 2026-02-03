import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/admin_book_service.dart';

class AdminProvider extends ChangeNotifier {
  final AdminBookService _adminService = AdminBookService();

  bool _isLoading = false;
  bool _isSubmitting = false;
  String _errorMessage = '';

  bool get isLoading => _isLoading;
  bool get isSubmitting => _isSubmitting;
  String get errorMessage => _errorMessage;

  /// Add a new book
  Future<bool> addBook(Book book) async {
    _setSubmitting(true);
    try {
      await _adminService.addBook(book);
      _errorMessage = '';
      _setSubmitting(false);
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _setSubmitting(false);
      return false;
    }
  }

  /// Update an existing book
  Future<bool> updateBook(int id, Book book) async {
    _setSubmitting(true);
    try {
      await _adminService.updateBook(id, book);
      _errorMessage = '';
      _setSubmitting(false);
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _setSubmitting(false);
      return false;
    }
  }

  /// Delete a book
  Future<bool> deleteBook(int id) async {
    _setSubmitting(true);
    try {
      await _adminService.deleteBook(id);
      _errorMessage = '';
      _setSubmitting(false);
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _setSubmitting(false);
      return false;
    }
  }

  void _setSubmitting(bool value) {
    _isSubmitting = value;
    notifyListeners();
  }

  void clearError() {
    _errorMessage = '';
    notifyListeners();
  }
}
