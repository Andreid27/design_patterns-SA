class AppConstants {
  // Endpoints (base URL is now configured in .env file)
  static const String BOOKS_ENDPOINT = "/books";
  static const String ORDERS_ENDPOINT = "/orders";

  // Timeouts (in milliseconds)
  static const int CONNECT_TIMEOUT = 5000;
  static const int RECEIVE_TIMEOUT = 3000;
}
