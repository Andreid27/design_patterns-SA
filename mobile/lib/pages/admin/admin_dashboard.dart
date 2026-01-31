import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../models/book.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  // Mock Data (Shared with buyer for demo purposes, in real app would be from Provider/API)
  final List<Book> _books = [
    Book(
      id: '1',
      title: 'Design Patterns',
      author: 'Erich Gamma et al.',
      price: 49.99,
      description: 'Elements of Reusable Object-Oriented Software',
      coverUrl: 'https://m.media-amazon.com/images/I/81gtKoapHFL._AC_UF1000,1000_QL80_.jpg',
    ),
    Book(
      id: '2',
      title: 'Clean Code',
      author: 'Robert C. Martin',
      price: 39.99,
      description: 'A Handbook of Agile Software Craftsmanship',
      coverUrl: 'https://m.media-amazon.com/images/I/41xShlnTZTL._SX376_BO1,204,203,200_.jpg',
    ),
    Book(
      id: '3',
      title: 'The Pragmatic Programmer',
      author: 'Andrew Hunt',
      price: 45.00,
      description: 'Your Journey to Mastery',
      coverUrl: 'https://m.media-amazon.com/images/I/51W1sBPO7tL._SX380_BO1,204,203,200_.jpg',
    ),
  ];

  void _deleteBook(String id) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Delete Book'),
        content: const Text('Are you sure you want to delete this book?'),
        actions: [
          CupertinoDialogAction(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            child: const Text('Delete'),
            onPressed: () {
              setState(() {
                _books.removeWhere((b) => b.id == id);
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Admin Dashboard'),
        trailing: GestureDetector(
          onTap: () {
             // Example logout
             context.go('/sign-in');
          },
          child: const Icon(CupertinoIcons.power, color: CupertinoColors.systemRed),
        ),
      ),
      child: SafeArea( // Use SafeArea to avoid overlap
        child: Stack( // Stack to overlay FAB
          children: [
            ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _books.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final book = _books[index];
                return _AdminBookTile(
                  book: book,
                  onEdit: () {
                    // Navigate to edit page (TODO)
                  },
                  onDelete: () => _deleteBook(book.id),
                );
              },
            ),
            Positioned(
              bottom: 24,
              right: 24,
              child: SizedBox(
                width: 56,
                height: 56,
                child: FloatingActionButton(
                  onPressed: () {
                    // Navigate to add page (TODO)
                  },
                  backgroundColor: theme.primaryColor,
                  child: const Icon(Icons.add, color: Colors.white),
                  shape: const CircleBorder(),
                  elevation: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AdminBookTile extends StatelessWidget {
  final Book book;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _AdminBookTile({
    required this.book,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              book.coverUrl,
              width: 50,
              height: 75,
              fit: BoxFit.cover,
               errorBuilder: (context, error, stackTrace) => Container(
                  width: 50,
                  height: 75,
                  color: CupertinoColors.systemGrey5,
                  child: const Icon(CupertinoIcons.book, size: 20, color: CupertinoColors.systemGrey),
                ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  book.author,
                  style: const TextStyle(color: CupertinoColors.systemGrey, fontSize: 14),
                ),
                Text(
                  '\$${book.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CupertinoTheme.of(context).primaryColor,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.pencil),
                onPressed: onEdit,
              ),
              CupertinoButton(
                 padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.trash, color: CupertinoColors.systemRed),
                onPressed: onDelete,
              ),
            ],
          )
        ],
      ),
    );
  }
}
