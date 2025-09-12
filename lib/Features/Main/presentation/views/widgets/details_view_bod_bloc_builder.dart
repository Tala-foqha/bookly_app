// Features/Main/presentation/views/widgets/details_view_bod_bloc_builder.dart
import 'package:bookly_app/Features/Main/presentation/maneger/details/details_cubit.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsViewBodyBlocBuilder extends StatelessWidget {
  const DetailsViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is DetailsFailure) {
          return Text(state.message);
        }
        if (state is DetailsSuccess) {
          var book=state.books;
          return DetailsViewBody(books: book,);
        }
        return SizedBox();
      },
    );
  }
}
