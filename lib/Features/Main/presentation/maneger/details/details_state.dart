// Features/Main/presentation/maneger/details/details_state.dart
part of 'details_cubit.dart';

@immutable
abstract class DetailsState {}

class DetailsInitial extends DetailsState {}
class DetailsSuccess extends DetailsState{
  final BookEntity books;

  DetailsSuccess({required this.books});
}
class DetailsLoading extends DetailsState {}
class DetailsFailure extends DetailsState {
  final String message;

  DetailsFailure({required this.message});
}




