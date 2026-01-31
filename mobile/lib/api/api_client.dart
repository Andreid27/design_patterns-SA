import 'package:dio/dio.dart';

class ApiClient {
  static final Dio dio = Dio();
  // Keep a reference to the auth interceptor so we can add/remove it without clearing others
  static InterceptorsWrapper? _authInterceptor;

  /// Initialize the API client with base URL from environment
  static void initialize(String baseUrl) {
    if (baseUrl.isNotEmpty) {
      print('Setting API base URL to: $baseUrl');
      dio.options.baseUrl = baseUrl;

      // Add logging interceptor
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            print('🌐 API Request: ${options.method} ${options.uri}');
            print('Headers: ${options.headers}');
            if (options.data != null) {
              print('Body: ${options.data}');
            }
            return handler.next(options);
          },
          onResponse: (response, handler) {
            print('✅ API Response [${response.statusCode}]: ${response.requestOptions.uri}');
            print('Response: ${response.data}');
            return handler.next(response);
          },
          onError: (DioException error, handler) {
            print('❌ API Error [${error.response?.statusCode}]: ${error.requestOptions.uri}');
            print('Error: ${error.message}');
            print('Response data: ${error.response?.data}');
            return handler.next(error);
          },
        ),
      );
    }
  }

  /// Call this to set or update the Bearer token for all requests.
  static void setBearerToken(String? token) {
    // Remove previous auth interceptor if present
    if (_authInterceptor != null) {
      dio.interceptors.remove(_authInterceptor);
      _authInterceptor = null;
    }
    // Add new auth interceptor if token provided
    if (token != null && token.isNotEmpty) {
      _authInterceptor = InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
      );
      dio.interceptors.add(_authInterceptor!);
    }
  }
}
