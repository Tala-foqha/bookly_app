// Features/Main/presentation/views/widgets/latest_item.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LatestItem extends StatelessWidget {
  LatestItem({super.key, required this.book});
  List<String> stars = [
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/starblack.svg',
  ];
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.28,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 89 / 121,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child:CachedNetworkImage (
                 
                  fit: BoxFit.scaleDown, imageUrl:  book.image!,
                ),
              ),
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(stars.length, (index) {
                return SvgPicture.asset(stars[index]);
              }),
            ),
            SizedBox(height: 3),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              book.title,
              style: AppStyles.regulateIlatic10.copyWith(color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              book.author!,
              style: AppStyles.bold14.copyWith(color: Color(0xff9A9A9A)),
            ),
          ],
        ),
      ),
    );
  }
}
