// Features/Main/domain/repos/home_repo.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks();
  Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();




}