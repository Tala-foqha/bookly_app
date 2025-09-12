// Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void>fetchFeaturedBooks({int pageNumber=0})async{
    if(pageNumber==0){
    emit(FeaturedBooksLoading());}
    else{
      emit(FeaturedBooksPaginationLoading());
    }
   var result=await featuredBooksUseCase.call(pageNumber);
result.fold((f){
  if(pageNumber==0){
emit(FeaturedBooksFailure(errorMessage: f.toString()));}
else{
  emit(FeaturedBooksPaginationFailure(message: f.toString()));
}},
 (s)=>emit(FeaturedBooksSuccess(books: s)));
  }

  
}
