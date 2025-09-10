// Features/Main/data/data_source/home_local_data_source.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  List<BookEntity>fetchFeaturedBooks();
  List<BookEntity>fetchNewestBooks();    //not future becase the data is cached.
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box=Hive.box<BookEntity>('featuredBooks');
    return box.values.toList();
   
  }

  @override
   List<BookEntity> fetchNewestBooks() {
    var box=Hive.box<BookEntity>('newestBooks');
    return box.values.toList();
   
    
   }
}