import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'dart:convert';
import '../config/env.dart';
import '../providers/user_profile.dart';

const FlutterAppAuth appAuth = FlutterAppAuth();
const FlutterSecureStorage secureStorage = FlutterSecureStorage();

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String? _errorMessage;
  bool _isLoading = false;

  Map<String, dynamic>? _parseIdToken(String idToken) {
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

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final AuthorizationTokenResponse? result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          Environment.keycloakClientId,
          Environment.keycloakRedirectUri,
          discoveryUrl: Environment.keycloakDiscoveryUrl,
          scopes: ['openid', 'profile', 'email'],
        ),
      );

      if (result != null) {
        await secureStorage.write(key: 'access_token', value: result.accessToken);
        await secureStorage.write(key: 'id_token', value: result.idToken);
        await secureStorage.write(key: 'refresh_token', value: result.refreshToken);

        final userProfile = Provider.of<UserProfile>(context, listen: false);

        // Extract info from token
        String? name;
        String? email;
        String role = 'BUYER'; // Default role

        if (result.idToken != null) {
          final payload = _parseIdToken(result.idToken!);
          if (payload != null) {
            debugPrint('========== LOGIN TOKEN PAYLOAD DEBUG ==========');
            debugPrint('Full payload: $payload');

            name = payload['name'] ?? payload['preferred_username'];
            email = payload['email'];

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
            debugPrint('===============================================');
          }
        }

        userProfile.updateTokens(
          access: result.accessToken,
          id: result.idToken,
          refresh: result.refreshToken,
        );
        userProfile.updateProfile(newName: name, newEmail: email, newRole: role);

        if (mounted) {
          context.go('/');
        }
      }
    } catch (e, stack) {
      debugPrint('Login failed: $e');
      debugPrint('$stack');
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: AppBar(
        title: const Text('Sign In', style: TextStyle(color: Colors.white)),
        backgroundColor: theme.colorScheme.primary,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with circular background
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Icon(
                Icons.library_books,
                size: 80,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 48),
            // Sign in button
            if (_isLoading)
              const CircularProgressIndicator(color: Colors.white)
            else
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: theme.colorScheme.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Sign into Library',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            if (_errorMessage != null) ...[
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.white),
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
