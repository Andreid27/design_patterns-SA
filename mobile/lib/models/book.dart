class Book {
  final String id;
  final String title;
  final String author;
  final double price;
  final String description;
  final String coverUrl;
  final bool isFeatured;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.price,
    required this.description,
    required this.coverUrl,
    this.isFeatured = false,
  });

  // Factory for potentially parsing from JSON later
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      coverUrl: json['coverUrl'] as String,
      isFeatured: json['isFeatured'] as bool? ?? false,
    );
  }
}
