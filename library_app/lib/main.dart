import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';
import 'core/theme.dart';
import 'models/book.dart';
import 'providers/book_provider.dart';
import 'providers/order_provider.dart';
import 'providers/user_profile.dart';
import 'providers/admin_provider.dart';
import 'screens/home_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/book_detail_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/admin_screen.dart';

Map<String, dynamic>? parseIdToken(String idToken) {
  try {
    final parts = idToken.split('.');
    if (parts.length != 3) return null;
    final payload = json.decode(
      utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
    );
    return payload;
  } catch (e) {
    debugPrint('Error parsing ID token: $e');
    return null;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Load tokens from secure storage
  const secureStorage = FlutterSecureStorage();
  final accessToken = await secureStorage.read(key: 'access_token');
  final idToken = await secureStorage.read(key: 'id_token');
  final refreshToken = await secureStorage.read(key: 'refresh_token');

  // Initialize UserProfile with stored tokens
  final userProfile = UserProfile();
  if (accessToken != null && accessToken.isNotEmpty) {
    userProfile.updateTokens(
      access: accessToken,
      id: idToken,
      refresh: refreshToken,
    );

    // Parse ID token to extract user info
    if (idToken != null) {
      final payload = parseIdToken(idToken);
      if (payload != null) {
        debugPrint('========== TOKEN PAYLOAD DEBUG ==========');
        debugPrint('Full payload: $payload');

        final name = payload['name'] ?? payload['preferred_username'];
        final email = payload['email'];
        String role = 'BUYER'; // Default role

        // Check for realm roles
        if (payload['realm_access'] != null &&
            payload['realm_access']['roles'] != null) {
          final roles = List<String>.from(payload['realm_access']['roles']);
          debugPrint('Realm roles found: $roles');

          if (roles.contains('ADMIN')) {
            role = 'ADMIN';
            debugPrint('User has ADMIN role');
          } else if (roles.contains('BUYER')) {
            role = 'BUYER';
            debugPrint('User has BUYER role');
          }
        } else {
          debugPrint('No realm_access or roles found in token');
        }

        debugPrint('Final assigned role: $role');
        debugPrint('========================================');

        userProfile.updateProfile(newName: name, newEmail: email, newRole: role);
      }
    }
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: userProfile),
        ChangeNotifierProvider(create: (_) => BookProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
        ChangeNotifierProvider(create: (_) => AdminProvider()),
      ],
      child: const LibraryApp(),
    ),
  );
}

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserProfile>(context);

    final router = GoRouter(
      initialLocation: userProfile.isLoggedIn ? '/' : '/sign-in',
      refreshListenable: userProfile,
      redirect: (context, state) {
        final loggedIn = userProfile.isLoggedIn;
        final loggingIn = state.matchedLocation == '/sign-in';

        if (!loggedIn && !loggingIn) return '/sign-in';
        if (loggedIn && loggingIn) return '/';
        return null;
      },
      routes: [
        GoRoute(
          path: '/sign-in',
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/orders',
          builder: (context, state) => const OrdersScreen(),
        ),
        GoRoute(
          path: '/details',
          builder: (context, state) {
            final book = state.extra as Book;
            return BookDetailScreen(book: book);
          },
        ),
        GoRoute(
          path: '/admin',
          builder: (context, state) => const AdminScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Library App',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
