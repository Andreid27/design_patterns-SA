import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme.dart';
import 'models/book.dart';
import 'providers/book_provider.dart';
import 'providers/order_provider.dart';
import 'screens/home_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/book_detail_screen.dart';

void main() {
  runApp(const LibraryApp());
}

class LibraryApp extends StatelessWidget {
  const LibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
        title: 'Library App',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/orders': (context) => const OrdersScreen(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == '/details') {
            final book = settings.arguments as Book;
            return MaterialPageRoute(
              builder: (context) => BookDetailScreen(book: book),
            );
          }
          return null;
        },
      ),
    );
  }
}
