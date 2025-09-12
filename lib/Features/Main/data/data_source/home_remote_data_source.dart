// Features/Main/data/data_source/home_remote_data_source.dart
import 'package:bookly_app/Features/Main/data/models/book/book.model.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/fuctions/save_books.dart';

abstract class HomeRemoteDataSource {
   Future<List<BookEntity>>fetchFeaturedBooks({int pageNumber=0});

      Future<List<BookEntity>>fetchNewestdBooks({int pageNumber=0});


}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber=0})async {
  var data= await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber*10}');
  List<BookEntity> books = getBooksList(data);

  saveData(books,'featuredBooks');
  return books;

  }

  // void saveData(List<BookEntity> books,String booksName) {
  //   var box=Hive.box(booksName);
  //   box.addAll(books);
  // }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity>books=[];
    for(var bookMap in data["items"]){
      books.add(BookModel.fromJson(bookMap));
    
    }
   
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestdBooks({int pageNumber=0})async {
    var data= await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming&startIndex=${pageNumber*10}');
  List<BookEntity> books = getBooksList(data);
  saveData(books, 'newestBooks');
  return books;
  }
}