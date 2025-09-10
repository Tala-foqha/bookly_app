// Features/Main/domain/entites/book_entity.dart

import 'package:hive/hive.dart';
part 'book_entity.g.dart';


@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? author;
  @HiveField(3)
  final num rating;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final String Bookid;


  BookEntity( {
    required this.Bookid,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.price,
  });
}
