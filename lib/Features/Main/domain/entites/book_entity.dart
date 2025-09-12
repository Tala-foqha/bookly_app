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
  final List<String>? author;
  @HiveField(3)
  final num ?rating;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final String Bookid;
  @HiveField(6)
  final String? description;
   @HiveField(7)
   final String ?subTitle;
    @HiveField(8)
    final String? link;
    @HiveField(9)
    final List<String>? category;



  BookEntity({
     this.category,
     this.subTitle,
     this.link,
     this.description,
    required this.Bookid,
    required this.image,
    required this.title,
     this.author,
     this.rating,
     this.price,
  });
}
