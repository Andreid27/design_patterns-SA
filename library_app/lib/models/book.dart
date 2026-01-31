import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  final int? id;
  final String title;
  final String author;
  final double price;

  Book({
    this.id,
    required this.title,
    required this.author,
    required this.price,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  String get formattedPrice {
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return formatter.format(price);
  }
}
