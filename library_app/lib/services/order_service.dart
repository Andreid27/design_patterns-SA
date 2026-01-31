import 'package:dio/dio.dart';
import '../models/order.dart';
import '../models/order_request.dart';
import '../core/constants.dart';
import 'api_service.dart';

class OrderService {
  final ApiService _apiService;

  OrderService({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  Future<Order> createOrder(OrderRequest request) async {
    try {
      final response = await _apiService.dio.post(
        AppConstants.ORDERS_ENDPOINT,
        data: request.toJson(),
      );
      return Order.fromJson(response.data);
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<List<Order>> getOrders() async {
    try {
      final response = await _apiService.dio.get(AppConstants.ORDERS_ENDPOINT);
      return (response.data as List).map((x) => Order.fromJson(x)).toList();
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }

  Future<bool> cancelOrder(int id) async {
    try {
      await _apiService.dio.delete('${AppConstants.ORDERS_ENDPOINT}/$id');
      return true;
    } on DioException catch (e) {
      // If 404, the order might already be gone, so we could treat it as "handled" or throw.
      // Here we stick to standard error reporting.
      throw _apiService.handleError(e);
    }
  }

  Future<void> undoLastAction() async {
    try {
      await _apiService.dio.post('${AppConstants.ORDERS_ENDPOINT}/undo');
    } on DioException catch (e) {
      throw _apiService.handleError(e);
    }
  }
}
