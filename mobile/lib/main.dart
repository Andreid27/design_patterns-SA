import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/env.dart';
import 'pages/sign_in_page.dart';
import 'pages/buyer/buyer_home.dart';
import 'pages/buyer/catalog_page.dart';
import 'pages/admin/admin_dashboard.dart';
import 'api/api_client.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();
final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

// User profile model for Provider
class UserProfile extends ChangeNotifier {
  String? name;
  String? email;
  String? accessToken;
  String? idToken;
  String? refreshToken;
  String? role; // 'ADMIN' or 'BUYER'

  void updateTokens({String? access, String? id, String? refresh}) {
    accessToken = access;
    idToken = id;
    refreshToken = refresh;
    notifyListeners();
  }

  void updateProfile({String? newName, String? newEmail, String? newRole}) {
    name = newName;
    email = newEmail;
    if (newRole != null) role = newRole;
    notifyListeners();
  }

  void clear() {
    name = null;
    email = null;
    accessToken = null;
    idToken = null;
    refreshToken = null;
    role = null;
    notifyListeners();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load environment variables from .env file
  await dotenv.load(fileName: ".env");

  // Initialize API client with base URL
  ApiClient.initialize(Environment.apiBaseUrl);
  
  // Set up the Bearer token for API calls if available
  final secureStorage = FlutterSecureStorage();
  final accessToken = await secureStorage.read(key: 'access_token');
  final idToken = await secureStorage.read(key: 'id_token');
  final refreshToken = await secureStorage.read(key: 'refresh_token');
  
  ApiClient.setBearerToken(accessToken);

  // Create UserProfile instance and initialize with stored tokens
  final userProfile = UserProfile();
  if (accessToken != null && accessToken.isNotEmpty) {
    userProfile.updateTokens(
      access: accessToken,
      id: idToken,
      refresh: refreshToken,
    );
     // Default to Buyer on restore if not set (SignIn handles fresh login)
     userProfile.role = 'BUYER';
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/sign-in',
    redirect: (context, state) {
      final userProfile = Provider.of<UserProfile>(context, listen: false);
      final loggedIn = userProfile.accessToken != null && userProfile.accessToken!.isNotEmpty;
      final loggingIn = state.matchedLocation == '/sign-in';
      
      if (!loggedIn) return '/sign-in';
      
      if (loggedIn && loggingIn) {
        if (userProfile.role == 'ADMIN') return '/admin-dashboard';
        return '/buyer-home';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: '/admin-dashboard',
        builder: (context, state) => const AdminDashboardPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: '/buyer-home',
            builder: (context, state) => const BuyerHomePage(),
          ),
          GoRoute(
            path: '/catalog',
            builder: (context, state) => const BuyerCatalogPage(),
          ),
        ],
      ),
    ],
  );

  runApp(
    ChangeNotifierProvider.value(
      value: userProfile,
      child: MyApp(router: _router),
    ),
  );
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Book Store',
      theme: cupertinoThemeFromWebPalette(),
      routerConfig: router,
    );
  }
}

CupertinoThemeData cupertinoThemeFromWebPalette() {
  // Book Store Colors
  const primary = Color(0xFF6610f2); // Indigo
  const primaryDark = Color(0xFF520dc2);
  const background = Color(0xFFFFFFFF);
  const barBackground = Color(0xFFFFFFFF);
  const textColor = Color(0xFF475569); // Slate 600
  
  return const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: primary,
    primaryContrastingColor: primaryDark,
    barBackgroundColor: barBackground,
    scaffoldBackgroundColor: background,
    textTheme: CupertinoTextThemeData(
      textStyle: TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      navTitleTextStyle: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.w600),
      navLargeTitleTextStyle: TextStyle(color: textColor, fontSize: 34, fontWeight: FontWeight.bold),
      actionTextStyle: TextStyle(color: primary, fontSize: 17),
    ),
  );
}

ThemeData materialThemeFromWebPalette() {
  // Book Store Colors
  const primary = Color(0xFF6610f2); // Indigo
  const primaryDark = Color(0xFF520dc2);
  const background = Color(0xFFFFFFFF);
  const textColor = Color(0xFF475569); // Slate 600
  
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primarySwatch: MaterialColor(0xFF6610f2, {
      50: Color(0xFFF2EAFE),
      100: Color(0xFFDCC8FD),
      200: Color(0xFFC5A5FB),
      300: Color(0xFFAD81FA),
      400: Color(0xFF9C67F9),
      500: primary, 
      600: Color(0xFF5E0EE0),
      700: Color(0xFF530BC9),
      800: Color(0xFF4A09B2),
      900: Color(0xFF390589),
    }),
    primaryColor: primary,
    primaryColorDark: primaryDark,
    scaffoldBackgroundColor: background,
    cardColor: background,
    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      foregroundColor: textColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'SF Pro Text',
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      bodyMedium: TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      bodySmall: TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      titleLarge: TextStyle(color: textColor, fontSize: 22, fontWeight: FontWeight.w600, fontFamily: 'SF Pro Text'),
      titleMedium: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'SF Pro Text'),
      titleSmall: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'SF Pro Text'),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 2,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey.shade100,
      selectedColor: primary.withOpacity(0.2),
      labelStyle: const TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      secondaryLabelStyle: const TextStyle(color: textColor, fontFamily: 'SF Pro Text'),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
  );
}

class MainScaffold extends StatefulWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});
  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
   static const List<String> _routes = ['/buyer-home', '/catalog']; // Updated Routes
  void _onItemTapped(int index) {
    context.go(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    // Fix location retrieval for go_router 15.1.2
   final location = GoRouterState.of(context).matchedLocation;
   final selectedIndex = _routes.indexWhere((r) => location.startsWith(r));

    return Container(
      color: CupertinoColors.white,
      child: Stack(
        children: [
          // Main content
          Positioned.fill(
            child: SafeArea(
              child: widget.child, // IMPORTANT: Child is likely wrapped in a Scaffold now too, need to check nesting
              // Actually original MainScaffold was just a stack with padding.
              // To safely nest CuperintoPageScaffolds, it's generally okay, 
              // but we might want to ensure padding for the bottom bar.
            ),
          ),
          // Floating nav bar
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Container(
              decoration: BoxDecoration(
                color: theme.barBackgroundColor,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _NavBarItem(
                    icon: CupertinoIcons.home,
                    label: 'Home',
                    selected: selectedIndex == 0 || selectedIndex == -1, // Default to Home if unknown
                    onTap: () => _onItemTapped(0),
                    activeColor: theme.primaryColor,
                  ),
                  _NavBarItem(
                    icon: CupertinoIcons.book, // Book Icon for Catalog
                    label: 'Catalog',
                    selected: selectedIndex == 1,
                    onTap: () => _onItemTapped(1),
                    activeColor: theme.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final Color activeColor;
  const _NavBarItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
    required this.activeColor,
  });
  @override
  Widget build(BuildContext context) {
    final color = selected ? activeColor : CupertinoColors.inactiveGray;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 2),
            Text(label, style: TextStyle(color: color, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}


