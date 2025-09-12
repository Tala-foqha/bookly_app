// Features/Main/presentation/views/widgets/best_seller_loading_indicator.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/cupertino.dart';

class BestSellerLoadingIndicator extends StatelessWidget {
  const BestSellerLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.separated(
              // اربط الكنترولر
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              itemCount: 15,
              itemBuilder: (context, index) {
                return CustomBookImageLoadingIndicator();
                
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
    );;
  }
}