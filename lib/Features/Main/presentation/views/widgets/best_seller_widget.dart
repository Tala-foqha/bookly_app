// Features/Main/presentation/views/widgets/best_seller_widget.dart

import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksFailure) {
          return Text( state.errorMessage);
        }
        if (state is FeaturedBooksSuccess) {
          List<BookEntity>books=state.books;
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            itemCount: books.length,

            itemBuilder: (context, index) {
              return CachedNetworkImage(imageUrl: books[index].image!,);
            },
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(width: 10),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
