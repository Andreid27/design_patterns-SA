// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) => OrderRequest(
      customerName: json['customerName'] as String,
      bookId: (json['bookId'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$OrderRequestToJson(OrderRequest instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'bookId': instance.bookId,
      'quantity': instance.quantity,
      'paymentMethod': instance.paymentMethod,
    };
