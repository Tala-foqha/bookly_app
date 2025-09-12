// Features/Main/presentation/views/widgets/best_seller_widget.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/best_seller_loading_indicator.dart';
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
  var nextPage=1;
  var isLoading=false;

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
  void _scrollListner()async{
    var currentPosition=_scrollController.position.pixels;
    var maxScrollLength= _scrollController.position.maxScrollExtent * 0.7;
    if(currentPosition>=0.7*maxScrollLength){
      if (!isLoading) {
        isLoading=true;
await  context.read<FeaturedBooksCubit>().fetchFeaturedBooks(pageNumber: nextPage++);
isLoading=false;
}

    }
  }
  List<BookEntity>books=[];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        }
        if (state is FeaturedBooksSuccess||
        state is FeaturedBooksPaginationLoading ||
        state is FeaturedBooksPaginationFailure) {
          List<BookEntity> book =books;

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
        return BestSellerLoadingIndicator();
      }, listener: (BuildContext context, FeaturedBooksState state) { 
        if(state is FeaturedBooksSuccess){
          books.addAll(state.books);
        }
       },
    );
  }
}
