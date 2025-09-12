// Features/Main/presentation/maneger/newest_books/newest_books_state.dart
part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksPaginationLoading extends NewestBooksState {}
class NewestBooksPaginationFailure extends NewestBooksState {
  final String error;

  NewestBooksPaginationFailure({required this.error});
}


class NewestBooksSuccess extends NewestBooksState {
final  List<BookEntity>books;

  NewestBooksSuccess({required this.books});
}

class NewestBooksFailure extends NewestBooksState {
  final String error;

  NewestBooksFailure({required this.error});
}




