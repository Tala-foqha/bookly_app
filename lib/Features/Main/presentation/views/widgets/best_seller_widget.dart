// Features/Main/presentation/views/widgets/best_seller_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart';

class BestSellerWidget extends StatefulWidget {
  const BestSellerWidget({super.key});

  @override
  State<BestSellerWidget> createState() => _BestSellerWidgetState();
}

class _BestSellerWidgetState extends State<BestSellerWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollListner);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  void _scrollListner(){
    var currentPosition=_scrollController.position.pixels;
    var maxScrollLength= _scrollController.position.maxScrollExtent * 0.7;
    if(currentPosition>=0.7*maxScrollLength){
      context.read<FeaturedBooksCubit>().fetchFeaturedBooks();

    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        }
        if (state is FeaturedBooksSuccess) {
          List<BookEntity> books = state.books;

          return ListView.separated(
            controller: _scrollController, // اربط الكنترولر
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            itemCount: books.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: books[index].image ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error, color: Colors.red),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
