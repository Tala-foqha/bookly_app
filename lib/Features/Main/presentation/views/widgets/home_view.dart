// Features/Main/presentation/views/widgets/home_view.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/best_seller_widget.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/books_tab.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/latest_list_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/latest_list_view_bloc_builder.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 16),
        Text(
          'Best Seller',
          style: AppStyles.bold24.copyWith(color: Colors.black),
        ),
        SizedBox(height: 12),
        SizedBox(height: 256, child: BestSellerWidget()),
        SizedBox(height: 16),
        SizedBox(width: 175, child: Divider(height: 2, color: Colors.black)),
        SizedBox(height: 12),
        BooksTab(),
        SizedBox(height: 12),
        SizedBox(width: 333, child: Divider(height: 2, color: Colors.black)),
        SizedBox(height: 20),
        LatestListViewBlocBuilder(),
      ],
    );
  }
}
