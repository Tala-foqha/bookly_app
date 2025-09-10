// Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

  
}
