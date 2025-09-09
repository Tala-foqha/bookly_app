// Features/Main/domain/use_case/fetch_featured_books_use_case.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});


    Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks(){
      return homeRepo.fetchFeaturedBooks();
      
    }

}