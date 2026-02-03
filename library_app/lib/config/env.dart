import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  // API Configuration
  static String get apiBaseUrl => dotenv.get('API_BASE_URL');

  // Keycloak Configuration
  static String get keycloakIssuer => dotenv.get('KEYCLOAK_ISSUER');
  static String get keycloakClientId => dotenv.get('KEYCLOAK_CLIENT_ID');
  static String get keycloakRedirectUri => dotenv.get('KEYCLOAK_REDIRECT_URI');
  static String get keycloakDiscoveryUrl => dotenv.get('KEYCLOAK_DISCOVERY_URL');
}
