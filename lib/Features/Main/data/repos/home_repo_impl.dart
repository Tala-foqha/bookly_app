// Features/Main/data/repos/home_repo_impl.dart
import 'dart:math';

import 'package:bookly_app/Features/Main/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/Features/Main/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber=0})async {
try {
  var booksList=homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
  if(booksList.isNotEmpty){
    return right(booksList);
  }
  var books=await   homeRemoteDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
  return right(books);
}  catch (e) {
  if(e is DioException){
   

  return left(ServerFailure.fromDioError(e));
  
  
 
 


}else{
  return left(ServerFailure(message: e.toString()));

}
  }}

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({int pageNumber=0})async {
   try {
  var booksList=homeLocalDataSource.fetchNewestBooks(pageNumber: DateTime.april);
  if(booksList.isNotEmpty){
    return right(booksList);
  }
  var books=await   homeRemoteDataSource.fetchNewestdBooks(pageNumber: pageNumber);
  return right(books);
}  catch (e) {
  return left(ServerFailure( message: e.toString()));
}
  }}
