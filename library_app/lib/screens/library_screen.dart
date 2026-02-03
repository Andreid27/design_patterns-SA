import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import '../config/env.dart';
import '../providers/book_provider.dart';
import '../providers/user_profile.dart';
import '../widgets/error_view.dart';
import '../widgets/book_card.dart';
import '../widgets/loading_book_card.dart';
import 'book_detail_screen.dart';

const secureStorage = FlutterSecureStorage();
const appAuth = FlutterAppAuth();

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _selectedFilter = 'All'; // Options: All, Featured, Bestsellers
  bool _isLoggingOut = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookProvider>().fetchBooks();
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isEmpty) {
        _applyFilter(_selectedFilter);
      } else {
        // Reset filter selection visually when searching, or keep it?
        // Usually search overrides static filters.
        setState(() {
          _selectedFilter = 'All'; // Simple approach: search is global
        });
        context.read<BookProvider>().searchBooks(query, 'title');
      }
    });
  }

  void _applyFilter(String filter) {
    setState(() {
      _selectedFilter = filter;
      _searchController.clear(); // Clear search when switching tabs
    });

    final provider = context.read<BookProvider>();
    switch (filter) {
      case 'Featured':
        provider.filterFeatured();
        break;
      case 'Bestsellers':
        provider.filterBestsellers();
        break;
      default:
        provider.fetchBooks();
        break;
    }
  }

  String? _getUserNameFromIdToken(String? idToken) {
    if (idToken == null) return null;
    try {
      final parts = idToken.split('.');
      if (parts.length != 3) return null;
      final payload = json.decode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );
      return payload['name'] ?? payload['preferred_username'] ?? payload['given_name'];
    } catch (_) {
      return null;
    }
  }

  Future<void> _disconnect() async {
    setState(() {
      _isLoggingOut = true;
    });

    try {
      // Get the ID token for logout
      final idToken = await secureStorage.read(key: 'id_token');

      // End the Keycloak session (this opens browser to logout)
      if (idToken != null) {
        try {
          await appAuth.endSession(
            EndSessionRequest(
              idTokenHint: idToken,
              postLogoutRedirectUrl: Environment.keycloakRedirectUri,
              discoveryUrl: Environment.keycloakDiscoveryUrl,
            ),
          );
        } catch (e) {
          debugPrint('End session error: $e');
          // Continue with local cleanup even if endSession fails
        }
      }

      // Remove stored tokens
      await secureStorage.delete(key: 'access_token');
      await secureStorage.delete(key: 'id_token');
      await secureStorage.delete(key: 'refresh_token');

      // Clear user profile
      if (mounted) {
        Provider.of<UserProfile>(context, listen: false).clear();
        // Navigate to sign-in page
        context.go('/sign-in');
      }
    } catch (e) {
      debugPrint('Disconnect error: $e');
      // Even on error, try to clear local data
      await secureStorage.delete(key: 'access_token');
      await secureStorage.delete(key: 'id_token');
      await secureStorage.delete(key: 'refresh_token');

      if (mounted) {
        Provider.of<UserProfile>(context, listen: false).clear();
        context.go('/sign-in');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoggingOut = false;
        });
      }
    }
  }

  void _showDisconnectConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: const Text('Logout Confirmation'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(dialogContext).pop(),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('Logout'),
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              await _disconnect();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserProfile>(context);
    final userName = _getUserNameFromIdToken(userProfile.idToken) ?? userProfile.name ?? 'User';
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        elevation: 0,
        actions: [
          if (_isLoggingOut)
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          else
            IconButton(
              icon: const Icon(Icons.power_settings_new),
              color: Colors.red,
              onPressed: _showDisconnectConfirmation,
              tooltip: 'Logout',
            ),
        ],
      ),
      body: Column(
        children: [
          // Hello Section
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.primary.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                if (userProfile.role != null) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      userProfile.role == 'ADMIN' ? 'Administrator' : 'Buyer',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search by title...',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              onChanged: _onSearchChanged,
            ),
          ),

          // Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                _buildFilterChip('All'),
                const SizedBox(width: 8),
                _buildFilterChip('Featured'),
                const SizedBox(width: 8),
                _buildFilterChip('Bestsellers'),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // Content List
          Expanded(
            child: Consumer<BookProvider>(
              builder: (context, provider, child) {
                if (provider.isLoading) {
                  return ListView.builder(
                    padding: const EdgeInsets.only(top: 8, bottom: 80),
                    itemCount: 5, // Show 5 skeleton items
                    itemBuilder: (context, index) => const LoadingBookCard(),
                  );
                }

                if (provider.errorMessage.isNotEmpty) {
                  return ErrorView(
                    message: provider.errorMessage,
                    onRetry: () => _applyFilter(_selectedFilter),
                  );
                }

                if (provider.books.isEmpty) {
                  return const Center(child: Text('No books found.'));
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    // Re-apply current logic on pull-to-refresh
                    if (_searchController.text.isNotEmpty) {
                      await provider.searchBooks(
                          _searchController.text, 'title');
                    } else {
                      switch (_selectedFilter) {
                        case 'Featured':
                          await provider.filterFeatured();
                          break;
                        case 'Bestsellers':
                          await provider.filterBestsellers();
                          break;
                        default:
                          await provider.fetchBooks();
                          break;
                      }
                    }
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8, bottom: 80),
                    itemCount: provider.books.length,
                    itemBuilder: (context, index) {
                      final book = provider.books[index];
                      return BookCard(
                        book: book,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookDetailScreen(book: book),
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    final isSelected = _selectedFilter == label;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (bool selected) {
        if (selected) {
          _applyFilter(label);
        }
      },
      selectedColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
      checkmarkColor: Theme.of(context).colorScheme.primary,
    );
  }
}
