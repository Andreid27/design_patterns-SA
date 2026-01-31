class AppConstants {
  // Base URL for Android Emulator to access localhost
  static const String BASE_URL = "http://10.0.2.2:8080/api";

  // Endpoints
  static const String BOOKS_ENDPOINT = "/books";
  static const String ORDERS_ENDPOINT = "/orders";

  // Timeouts (in milliseconds)
  static const int CONNECT_TIMEOUT = 5000;
  static const int RECEIVE_TIMEOUT = 3000;
}
