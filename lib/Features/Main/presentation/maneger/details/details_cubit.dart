// Features/Main/presentation/maneger/details/details_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_book_details_use_case.dart';
import 'package:meta/meta.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.fetchBookDetailsUseCase) : super(DetailsInitial());
  final FetchBookDetailsUseCase fetchBookDetailsUseCase;

  Future<void>fetchDetailsBooks({required String bookId})async{
    emit(DetailsLoading());
    var result=await fetchBookDetailsUseCase.call(bookId);
    result.fold((l){
      emit(DetailsFailure(message: l.message));
    }, (s){
      emit(DetailsSuccess(books: s));

    });

  }

  
}
