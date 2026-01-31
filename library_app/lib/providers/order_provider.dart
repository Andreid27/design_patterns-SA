import 'package:flutter/material.dart';
import '../models/order.dart';
import '../models/order_request.dart';
import '../services/order_service.dart';

class OrderProvider extends ChangeNotifier {
  final OrderService _orderService = OrderService();

  List<Order> _orders = [];
  bool _isLoading = false;
  bool _isSubmitting = false;
  String _error = '';

  List<Order> get orders => _orders;
  bool get isLoading => _isLoading;
  bool get isSubmitting => _isSubmitting;
  String get error => _error;

  Future<void> fetchOrders() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      _orders = await _orderService.getOrders();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> placeOrder(OrderRequest request) async {
    _isSubmitting = true;
    _error = '';
    notifyListeners();

    try {
      await _orderService.createOrder(request);
      // Refresh the list after a successful order
      // We don't await this to return the success status faster,
      // but strictly it might be better to await to ensure consistency.
      // For UX, we'll return true immediately after creation succeeds.
      await fetchOrders();
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }

  Future<void> cancelOrder(int id) async {
    _isSubmitting = true; // Use submitting state for blocking actions
    _error = '';
    notifyListeners();

    try {
      await _orderService.cancelOrder(id);
      await fetchOrders();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }

  Future<void> undoLastAction() async {
    _isSubmitting = true;
    _error = '';
    notifyListeners();

    try {
      await _orderService.undoLastAction();
      await fetchOrders();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }

  void clearError() {
    _error = '';
    notifyListeners();
  }
}
