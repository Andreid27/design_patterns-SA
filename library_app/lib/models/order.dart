import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  final int? id;
  final String customerName;
  final String? status;
  final double? totalAmount;
  final int bookId;
  final String? bookTitle;
  final double? unitPrice;
  final int quantity;
  final String paymentMethod;

  Order({
    this.id,
    required this.customerName,
    this.status,
    this.totalAmount,
    required this.bookId,
    this.bookTitle,
    this.unitPrice,
    required this.quantity,
    required this.paymentMethod,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  String get formattedTotal {
    if (totalAmount == null) return '\$0.00';
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return formatter.format(totalAmount);
  }
}
