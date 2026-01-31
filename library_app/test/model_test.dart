import 'package:flutter_test/flutter_test.dart';
import 'package:library_app/models/book.dart';

void main() {
  group('Book Model Test', () {
    test('fromJson correctly parses valid JSON map', () {
      final Map<String, dynamic> json = {
        "id": 1,
        "title": "Clean Code",
        "author": "Robert C. Martin",
        "price": 30.50
      };

      final book = Book.fromJson(json);

      expect(book.id, 1);
      expect(book.title, "Clean Code");
      expect(book.author, "Robert C. Martin");
      expect(book.price, 30.50);
    });

    test('formattedPrice returns correct currency format', () {
      final book =
          Book(id: 1, title: "Test Book", author: "Author", price: 19.99);

      // The model uses NumberFormat.currency(symbol: '$', decimalDigits: 2)
      // Note: Non-breaking space might be used by intl in some versions,
      // but usually '$19.99' is the standard output for that config.
      expect(book.formattedPrice, "\$19.99");
    });
  });
}
