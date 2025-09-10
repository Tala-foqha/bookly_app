// Features/Main/data/data_source/home_local_data_source.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity>fetchFeaturedBooks();
  List<BookEntity>fetchNewestBooks();    //not future becase the data is cached.
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}