// Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void>fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
   var result=await featuredBooksUseCase.call();
result.fold((f)=>emit(FeaturedBooksFailure(errorMessage: f.toString())),
 (s)=>emit(FeaturedBooksSuccess(books: s)));
  }

  
}
