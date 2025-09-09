// Features/Main/domain/entites/book_entity.dart
class BookEntity {
  final String image;
  final String title;
  final String author;
  final num rating;
  final num price;

  BookEntity({
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.price,
  });
}
