import 'package:dio/dio.dart';
import '../models/book.dart';
import '../core/constants.dart';
import 'api_service.dart';

class BookService {
  final ApiService _apiService;

  BookService({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  Future<List<Book>> getBooks() async {
    try {
      final response = await _apiService.dio.get(AppConstants.BOOKS_ENDPOINT);
      return (response.data as List).map((x) => Book.fromJson(x)).toList();
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<Book> getBookById(int id) async {
    try {
      final response =
          await _apiService.dio.get('${AppConstants.BOOKS_ENDPOINT}/$id');
      return Book.fromJson(response.data);
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<List<Book>> searchBooks(String query, String type) async {
    try {
      final endpoint = type == 'title' ? '/search/title' : '/search/author';
      final param = type == 'title' ? 'title' : 'author';

      final response = await _apiService.dio.get(
        '${AppConstants.BOOKS_ENDPOINT}$endpoint',
        queryParameters: {param: query},
      );
      return (response.data as List).map((x) => Book.fromJson(x)).toList();
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<List<Book>> getFeaturedBooks() async {
    try {
      final response =
          await _apiService.dio.get('${AppConstants.BOOKS_ENDPOINT}/featured');
      return (response.data as List).map((x) => Book.fromJson(x)).toList();
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<List<Book>> getBestsellers() async {
    try {
      final response = await _apiService.dio
          .get('${AppConstants.BOOKS_ENDPOINT}/bestsellers');
      return (response.data as List).map((x) => Book.fromJson(x)).toList();
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }
}
