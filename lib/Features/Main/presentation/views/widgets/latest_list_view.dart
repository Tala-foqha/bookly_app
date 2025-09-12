// Features/Main/presentation/views/widgets/latest_list_view.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/latest_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestListView extends StatefulWidget {
  const LatestListView({super.key, required this.books});
 final List<BookEntity>books;

  @override
  State<LatestListView> createState() => _LatestListViewState();
}

class _LatestListViewState extends State<LatestListView> {

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
await  context.read<NewestBooksCubit>().fetchNewestBooks(pageNumber: nextPage++);
isLoading=false;
}

    }
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.all(20),
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailsView.routeName);
              },
              child: LatestItem(book: widget.books[index],),
            ),
          );
        },
      ),
    );
  }
}
