// Features/Main/presentation/views/widgets/latest_list_view_bloc_builder.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/latest_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestListViewBlocBuilder extends StatelessWidget {
  LatestListViewBlocBuilder({super.key});
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return SizedBox(height: 200, child: Center(child: Text(state.error)));
        }
        if (state is NewestBooksSuccess ||
            state is NewestBooksPaginationLoading ||
            state is NewestBooksPaginationFailure) {
          return LatestListView(books: books);
        }
        return SizedBox(
          height: 200,
          child: Center(child: CircularProgressIndicator()),
        );
      },
      listener: (BuildContext context, NewestBooksState state) {
        if (state is NewestBooksSuccess) {
          books.addAll(state.books);
        }
      },
    );
  }
}
