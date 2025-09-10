// Features/Main/presentation/maneger/newest_books/newest_books_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void>fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var result=await fetchNewestBooksUseCase.call();
    result.fold((f)=>emit(NewestBooksFailure(error: f.toString())),
     (s)=>emit(NewestBooksSuccess(books: s)));
  }

  
}
