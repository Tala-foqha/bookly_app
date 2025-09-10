// Features/Main/data/repos/home_repo_impl.dart
import 'package:bookly_app/Features/Main/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/Features/Main/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()async {
try {
  var booksList=homeLocalDataSource.fetchFeaturedBooks();
  if(booksList.isNotEmpty){
    return right(booksList);
  }
  var books=await   homeRemoteDataSource.fetchFeaturedBooks();
  return right(books);
}  catch (e) {
  return left(Failure());
}
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks()async {
   try {
  var booksList=homeLocalDataSource.fetchNewestBooks();
  if(booksList.isNotEmpty){
    return right(booksList);
  }
  var books=await   homeRemoteDataSource.fetchNewestdBooks();
  return right(books);
}  catch (e) {
  return left(Failure());
}
  }}
