import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/book_provider.dart';
import '../widgets/error_view.dart';
import '../widgets/book_card.dart';
import '../widgets/loading_book_card.dart';
import 'book_detail_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _selectedFilter = 'All'; // Options: All, Featured, Bestsellers

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
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
