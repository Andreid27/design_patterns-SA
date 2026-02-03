import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_profile.dart';
import 'library_screen.dart';
import 'orders_screen.dart';
import 'admin_screen.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserProfile>(context);
    final isAdmin = userProfile.role == 'ADMIN';

    // Build screens list based on role
    final screens = [
      const LibraryScreen(),
      const OrdersScreen(),
      if (isAdmin) const AdminScreen(),
    ];

    // Build navigation destinations based on role
    final destinations = [
      const NavigationDestination(
        icon: Icon(Icons.library_books_outlined),
        selectedIcon: Icon(Icons.library_books),
        label: 'Library',
      ),
      const NavigationDestination(
        icon: Icon(Icons.shopping_bag_outlined),
        selectedIcon: Icon(Icons.shopping_bag),
        label: 'My Orders',
      ),
      if (isAdmin)
        const NavigationDestination(
          icon: Icon(Icons.admin_panel_settings_outlined),
          selectedIcon: Icon(Icons.admin_panel_settings),
          label: 'Admin',
        ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: destinations,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GoRouter.of(context).push('/agent'),
        child: const Icon(Icons.assistant),
      ),
    );
  }
}
