// Features/Main/data/data_source/home_remote_data_source.dart
import 'package:bookly_app/Features/Main/data/models/book/book.model.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/core/utils/api_services.dart';

abstract class HomeRemoteDataSource {
   Future<List<BookEntity>>fetchFeaturedBooks();

      Future<List<BookEntity>>fetchNewestdBooks();


}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks()async {
  var data= await apiServices.get(endPoint: 'Filtering=free-ebooks&q=programming');
  List<BookEntity> books = getBooksList(data);
  return books;

  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity>books=[];
    for(var bookMap in data["items"]){
      books.add(BookModel.fromJson(bookMap));
    
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestdBooks()async {
    var data= await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
  List<BookEntity> books = getBooksList(data);
  return books;
  }
}