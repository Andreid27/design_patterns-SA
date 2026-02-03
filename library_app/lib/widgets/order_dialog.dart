import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/book.dart';
import '../models/order_request.dart';
import 'package:provider/provider.dart';
import '../providers/order_provider.dart';
import '../providers/user_profile.dart';

void showOrderDialog(BuildContext context, Book book) {
  showDialog(
    context: context,
    builder: (context) => OrderDialog(book: book),
  );
}

class OrderDialog extends StatefulWidget {
  final Book book;

  const OrderDialog({super.key, required this.book});

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController(text: '1');
  String _paymentMethod = 'CREDIT_CARD';

  @override
  void dispose() {
    _quantityController.dispose();
    super.dispose();
  }

  String? _getUserNameFromIdToken(String? idToken) {
    if (idToken == null) return null;
    try {
      final parts = idToken.split('.');
      if (parts.length != 3) return null;
      final payload = json.decode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );
      return payload['name'] ??
             payload['preferred_username'] ??
             payload['given_name'] ??
             payload['email']?.split('@')[0];
    } catch (_) {
      return null;
    }
  }

  Future<void> _submitOrder() async {
    if (_formKey.currentState!.validate()) {
      final userProfile = context.read<UserProfile>();

      // Get customer name from user profile
      final name = userProfile.name ??
                   _getUserNameFromIdToken(userProfile.idToken) ??
                   userProfile.email ??
                   'Customer';

      final quantity = int.parse(_quantityController.text);

      final request = OrderRequest(
        customerName: name,
        bookId: widget.book.id!,
        quantity: quantity,
        paymentMethod: _paymentMethod,
      );

      final provider = context.read<OrderProvider>();

      // Close dialog immediately or wait?
      // Usually better to show progress. Let's close and show snackbar or handle loading inside dialog.
      // We will handle loading state inside the button.

      final success = await provider.placeOrder(request);

      if (!mounted) return;

      if (success) {
        Navigator.pop(context); // Close dialog
        Navigator.pop(context); // Close book details

        // Navigate to Orders screen (pushed as a new route per main.dart config)
        Navigator.pushNamed(context, '/orders');

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Order placed successfully!'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(provider.error),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserProfile>(context);
    final customerName = userProfile.name ??
                         _getUserNameFromIdToken(userProfile.idToken) ??
                         userProfile.email ??
                         'Customer';

    return AlertDialog(
      title: Text('Order "${widget.book.title}"'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Display customer name (read-only)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person, size: 20, color: Colors.grey),
                    const SizedBox(width: 8),
                    Text(
                      customerName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter quantity';
                  final q = int.tryParse(value);
                  if (q == null || q <= 0) return 'Invalid quantity';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _paymentMethod,
                decoration: const InputDecoration(labelText: 'Payment Method'),
                items: const [
                  DropdownMenuItem(
                      value: 'CREDIT_CARD', child: Text('Credit Card')),
                  DropdownMenuItem(value: 'PAYPAL', child: Text('PayPal')),
                ],
                onChanged: (value) {
                  setState(() {
                    _paymentMethod = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        Consumer<OrderProvider>(
          builder: (context, provider, child) {
            if (provider.isSubmitting) {
              return const CircularProgressIndicator();
            }
            return ElevatedButton(
              onPressed: _submitOrder,
              child: const Text('Place Order'),
            );
          },
        ),
      ],
    );
  }
}
