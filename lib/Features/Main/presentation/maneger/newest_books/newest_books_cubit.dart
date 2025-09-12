// Features/Main/presentation/maneger/newest_books/newest_books_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewestBooksLoading());
    } else {
      emit(NewestBooksPaginationLoading());
    }

    var result = await fetchNewestBooksUseCase.call(pageNumber);
    result.fold((f) {
      if (pageNumber == 0) {
        emit(NewestBooksFailure(error: f.toString()));
      } else {
        emit(NewestBooksPaginationFailure(error: f.message));
      }
    }, (s) => emit(NewestBooksSuccess(books: s)));
  }
}
