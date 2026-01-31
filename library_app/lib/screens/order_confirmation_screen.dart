import 'package:flutter/material.dart';
import '../models/book.dart';

class OrderConfirmationScreen extends StatelessWidget {
  final Book book;

  const OrderConfirmationScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirm Order')),
      body: Center(child: Text('Order form for ${book.title}')),
    );
  }
}
