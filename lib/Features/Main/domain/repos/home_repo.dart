// Features/Main/domain/repos/home_repo.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>>fetchFeaturedBooks();
    Future<List<BookEntity>>fetchNewestBooks();




}