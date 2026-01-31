import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/book.dart';

class BuyerCatalogPage extends StatelessWidget {
  const BuyerCatalogPage({super.key});

  final List<Book> _allBooks = const [
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
    Book(
      id: '4',
      title: 'Refactoring',
      author: 'Martin Fowler',
      price: 55.00,
      description: 'Improving the Design of Existing Code',
      coverUrl: 'https://m.media-amazon.com/images/I/41odjN0-bXL._SX396_BO1,204,203,200_.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      child: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Catalog'),
              backgroundColor: CupertinoColors.extraLightBackgroundGray,
              border: null,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
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
             const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
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
