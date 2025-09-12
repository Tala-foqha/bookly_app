// core/utils/fuctions/save_books.dart

import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntity> books, String booksName) {
  var box = Hive.box<BookEntity>(booksName);
  box.addAll(books);
}
