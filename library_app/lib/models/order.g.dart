// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: (json['id'] as num?)?.toInt(),
      customerName: json['customerName'] as String,
      status: json['status'] as String?,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      bookId: (json['bookId'] as num).toInt(),
      bookTitle: json['bookTitle'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'customerName': instance.customerName,
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'bookId': instance.bookId,
      'bookTitle': instance.bookTitle,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'paymentMethod': instance.paymentMethod,
    };
