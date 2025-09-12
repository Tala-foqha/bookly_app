// Features/Main/presentation/maneger/featured_books/featured_books_state.dart
part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPaginationLoading extends FeaturedBooksState {}
class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  final String message;

  FeaturedBooksPaginationFailure({required this.message});
}


class FeaturedBooksSuccess extends FeaturedBooksState {
final   List<BookEntity>books;

  FeaturedBooksSuccess({required this.books});
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailure({required this.errorMessage});
  }




