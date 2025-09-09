// Features/Main/presentation/views/widgets/best_seller_widget.dart

import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16),
      itemCount: 5,

      itemBuilder: (context, index) {
        return Image.asset(
          'assets/images/best_seller.png',
          width: 163,
          fit: BoxFit.cover,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(width: 10),
    );
  }
}
