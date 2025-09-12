// Features/Main/domain/use_case/fetch_book_details_use_case.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchBookDetailsUseCase extends UseCase<BookEntity, String> {
  final HomeRepo homeRepo;

  FetchBookDetailsUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, BookEntity>> call([String ?bookId]) {
    return homeRepo.fetchDetailsBooks(BookId: bookId!
      
    );
  }
}

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param? param);
}

class NoParam {}