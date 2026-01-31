import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'dart:convert'; // Added for base64 decoding
import '../config/env.dart';
import '../main.dart';
import 'package:flutter_e_mentor/api/api_client.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();
final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? _errorMessage;
  bool _isLoading = false;

  Map<String, dynamic>? _parseIdToken(String idToken) {
    try {
      final parts = idToken.split('.');
      if (parts.length != 3) return null;
      final payload = json.decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
      return payload;
    } catch (e) {
      print('Error parsing ID token: $e');
      return null;
    }
  }

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final AuthorizationTokenResponse? result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          Environment.keycloakClientId,
          Environment.keycloakRedirectUri,
          discoveryUrl: Environment.keycloakDiscoveryUrl,
          scopes: ['openid', 'profile', 'email'],
        ),
      );
      print('Attempting login with Redirect URI: ${Environment.keycloakRedirectUri}');
      
      if (result != null) {
        await secureStorage.write(key: 'access_token', value: result.accessToken);
        await secureStorage.write(key: 'id_token', value: result.idToken);
        await secureStorage.write(key: 'refresh_token', value: result.refreshToken);
        
        // Update API client and Provider
        ApiClient.setBearerToken(result.accessToken);
        final userProfile = Provider.of<UserProfile>(context, listen: false);
        
        // Extract info from token
        String? name;
        String? email;
        // Default Role
        String role = 'BUYER';
        
        if (result.idToken != null) {
           final payload = _parseIdToken(result.idToken!);
           if (payload != null) {
             name = payload['name'] ?? payload['preferred_username'];
             email = payload['email'];
             // Attempt to find realm roles if present (structure varies by Keycloak config)
             // Example: realm_access: { roles: ['ADMIN', ...] }
             if (payload['realm_access'] != null && payload['realm_access']['roles'] != null) {
               final roles = List<String>.from(payload['realm_access']['roles']);
               if (roles.contains('ADMIN')) {
                 role = 'ADMIN';
               }
             }
           }
        }

        userProfile.updateTokens(
          access: result.accessToken,
          id: result.idToken,
          refresh: result.refreshToken,
        );
        userProfile.updateProfile(newName: name, newEmail: email, newRole: role);
        
        // Redirect based on role
        if (mounted) {
           if (role == 'ADMIN') {
             GoRouter.of(context).go('/admin-dashboard');
           } else {
             GoRouter.of(context).go('/buyer-home');
           }
        }
      }
    } catch (e, stack) {
      print('Login failed: $e');
      print(stack);
      setState(() {
        _errorMessage = 'Login failed: $e';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
// ... rest of file

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    return CupertinoPageScaffold(
      backgroundColor: theme.primaryColor,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Sign In', style: TextStyle(color: CupertinoColors.white)),
        backgroundColor: theme.primaryColor,
        border: null,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo at the top with circular shaded background
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CupertinoColors.white.withOpacity(0.9),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: CupertinoColors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                CupertinoIcons.book_solid,
                size: 80,
                color: Color(0xFF6610f2), // Indigo
              ),
            ),
            const SizedBox(height: 40),
            // Sign in button
            if (_isLoading)
              const CupertinoActivityIndicator(color: CupertinoColors.white)
            else
              CupertinoButton.filled(
                onPressed: _login,
                color: CupertinoColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                borderRadius: BorderRadius.circular(8),
                child: Text(
                  'Sign into Book Store',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                  ),
                ),
              ),
            if (_errorMessage != null) ...[
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: CupertinoColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
