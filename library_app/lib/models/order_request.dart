import 'package:json_annotation/json_annotation.dart';

part 'order_request.g.dart';

@JsonSerializable()
class OrderRequest {
  final String customerName;
  final int bookId;
  final int quantity;
  final String paymentMethod;

  OrderRequest({
    required this.customerName,
    required this.bookId,
    required this.quantity,
    required this.paymentMethod,
  });

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);
}
