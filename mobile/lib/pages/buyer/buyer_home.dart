import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../models/book.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../api/api_client.dart';
import '../../main.dart'; // For UserProfile

class BuyerHomePage extends StatefulWidget {
  const BuyerHomePage({super.key});

  @override
  State<BuyerHomePage> createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  // Mock Data
  final List<Book> _featuredBooks = [
    Book(
      id: '1',
      title: 'Design Patterns',
      author: 'Erich Gamma et al.',
      price: 49.99,
      description: 'Elements of Reusable Object-Oriented Software',
      coverUrl: 'https://m.media-amazon.com/images/I/81gtKoapHFL._AC_UF1000,1000_QL80_.jpg',
      isFeatured: true,
    ),
    Book(
      id: '2',
      title: 'Clean Code',
      author: 'Robert C. Martin',
      price: 39.99,
      description: 'A Handbook of Agile Software Craftsmanship',
      coverUrl: 'https://m.media-amazon.com/images/I/41xShlnTZTL._SX376_BO1,204,203,200_.jpg',
      isFeatured: true,
    ),
  ];

  final List<Book> _allBooks = [
    Book(
      id: '3',
      title: 'The Pragmatic Programmer',
      author: 'Andrew Hunt',
      price: 45.00,
      description: 'Elements of Reusable Object-Oriented Software',
      coverUrl: 'https://m.media-amazon.com/images/I/51W1sBPO7tL._SX380_BO1,204,203,200_.jpg',
    ),
    Book(
      id: '4',
      title: 'Refactoring',
      author: 'Martin Fowler',
      price: 55.00,
      description: 'Improving the Design of Existing Code',
      coverUrl: 'https://m.media-amazon.com/images/I/41odjN0-bXL._SX396_BO1,204,203,200_.jpg',
    ),
    Book(
      id: '1',
      title: 'Design Patterns',
      author: 'Erich Gamma',
      price: 49.99,
      description: 'Elements of Reusable Object-Oriented Software',
      coverUrl: 'https://m.media-amazon.com/images/I/81gtKoapHFL._AC_UF1000,1000_QL80_.jpg',
    ),
  ];

  Future<void> _disconnect() async {
    final secureStorage = const FlutterSecureStorage();
    await secureStorage.delete(key: 'access_token');
    await secureStorage.delete(key: 'id_token');
    await secureStorage.delete(key: 'refresh_token');
    
    if (mounted) {
      Provider.of<UserProfile>(context, listen: false).clear();
      ApiClient.setBearerToken(null);
      context.go('/sign-in');
    }
  }

  void _showDisconnectConfirmation() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext dialogContext) => CupertinoAlertDialog(
        title: const Text('Sign Out'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          CupertinoDialogAction(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(dialogContext).pop(),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text('Sign Out'),
            onPressed: () {
              Navigator.of(dialogContext).pop();
              _disconnect();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    final userProfile = Provider.of<UserProfile>(context);
    final userName = userProfile.name ?? 'Guest';
    final userRole = userProfile.role ?? 'Unknown';

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Book Store'),
              trailing: GestureDetector(
                onTap: _showDisconnectConfirmation,
                child: const Icon(CupertinoIcons.power, color: CupertinoColors.systemRed, size: 24),
              ),
              backgroundColor: CupertinoColors.extraLightBackgroundGray,
              border: null,
            ),
            // User Header
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 24,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello,', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: theme.primaryColor)),
                      const SizedBox(height: 8),
                      Text(userName, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: CupertinoColors.black)),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          userRole,
                          style: const TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
                child: Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                    fontFamily: 'SF Pro Text',
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 280, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _featuredBooks.length,
                  itemBuilder: (context, index) {
                    final book = _featuredBooks[index];
                    return _FeaturedBookCard(book: book);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
                child: Text(
                  'Catalog',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                    fontFamily: 'SF Pro Text',
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final book = _allBooks[index];
                    return _BookGridItem(book: book);
                  },
                  childCount: _allBooks.length,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 80)), // Bottom padding
          ],
        ),
      ),
    );
  }
}

class _FeaturedBookCard extends StatelessWidget {
  final Book book;
  const _FeaturedBookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Cover
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              book.coverUrl,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 100,
                height: 150,
                color: CupertinoColors.systemGrey5,
                child: const Icon(CupertinoIcons.book, color: CupertinoColors.systemGrey),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  book.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  book.author,
                  style: const TextStyle(
                    fontSize: 14,
                    color: CupertinoColors.systemGrey,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '\$${book.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CupertinoTheme.of(context).primaryColor,
                  ),
                ),
                const Spacer(),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Text('Details'),
                  onPressed: () {
                     // Navigate to details
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BookGridItem extends StatelessWidget {
  final Book book;
  const _BookGridItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                book.coverUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                 errorBuilder: (context, error, stackTrace) => Container(
                  color: CupertinoColors.systemGrey5,
                  child: const Center(child: Icon(CupertinoIcons.book, color: CupertinoColors.systemGrey)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const SizedBox(height: 2),
                Text(
                  book.author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: CupertinoColors.systemGrey, fontSize: 12),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${book.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoTheme.of(context).primaryColor,
                      ),
                    ),
                    Icon(CupertinoIcons.add_circled, color: CupertinoTheme.of(context).primaryColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
