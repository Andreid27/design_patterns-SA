import 'package:dio/dio.dart';
import '../core/constants.dart';
import '../config/env.dart';

class ApiService {
  final Dio _dio;

  ApiService()
      : _dio = Dio(BaseOptions(
          baseUrl: Environment.apiBaseUrl,
          connectTimeout:
              const Duration(milliseconds: AppConstants.CONNECT_TIMEOUT),
          receiveTimeout:
              const Duration(milliseconds: AppConstants.RECEIVE_TIMEOUT),
        )) {
    _dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  Dio get dio => _dio;

  String handleError(DioException error) {
    String errorDescription = "";

    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode != null) {
          if (statusCode >= 500) {
            errorDescription = "Internal Server Error ($statusCode)";
          } else if (statusCode == 404) {
            errorDescription = "Resource not found ($statusCode)";
          } else if (statusCode == 400) {
            errorDescription = "Bad Request ($statusCode)";
          } else {
            errorDescription = "Received invalid status code: $statusCode";
          }
        } else {
          errorDescription =
              "Received invalid status code: ${error.response?.statusCode}";
        }
        break;
      case DioExceptionType.unknown:
        if (error.message != null &&
            error.message!.contains("SocketException")) {
          errorDescription =
              "Connection to API server failed due to internet connection";
        } else {
          errorDescription = "Unexpected error occurred";
        }
        break;
      default:
        errorDescription = "Unexpected error occurred";
    }
    return errorDescription;
  }
}
