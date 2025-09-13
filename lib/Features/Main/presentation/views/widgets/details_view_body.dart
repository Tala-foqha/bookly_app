// Features/Main/presentation/views/widgets/details_view_body.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/list_type_details.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/read_button.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsViewBody extends StatelessWidget {
  DetailsViewBody({super.key, required this.books});
  final BookEntity books;

  final List<String> stars = [
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/star.svg',
    'assets/svg/starblack.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 21.5, left: 7.5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarDetails(),
            AspectRatio(
              aspectRatio: 265 / 163,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl: books.image ?? "",
              ),
            ),
            SizedBox(height: 16),
            SizedBox(width: 180, child: Divider(height: 3, color: Colors.black)),
            SizedBox(height: 16),

            // ✅ لازم تمرري اللست
            CategoriesList(category: books.category??[]),
            SizedBox(height: 10),

            Text(
              books.title,
              style: AppStyles.title20.copyWith(color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(books.subTitle ?? "", style: AppStyles.subTitle10),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(stars.length, (index) {
                return SvgPicture.asset(stars[index]);
              }),
            ),
            SizedBox(height: 10),

            RichText(
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  height: 1.3,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: 'Author : ',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  TextSpan(
                    text: books.author?.join(", ") ?? "No Author",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('2,736 ratings . 777 reviews', style: AppStyles.bold10),
            SizedBox(height: 7),
            Center(
              child: Text(
                books.description ?? "",
                style: AppStyles.Regular15,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ReadButton(
              onPressed: ()async {
                Uri uri=Uri.parse(books.link!);
                if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ✅ عدّلت الاسم (PascalCase) + استقبل اللست
class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.category,
  });
  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: category.asMap().entries.map((entry) {
        final index = entry.key;
        final val = entry.value;
        return ListTypeDetails(
          text: val,
          color: getColor(index),
        );
      }).toList(),
    );
  }
}

// ✅ صلحت دالة الألوان
Color getColor(int index) {
  return getColors()[index % getColors().length];
}

List<Color> getColors() {
  return [
    Color(0xffC54444),
    Color(0xff4482C5),
    Color(0xff634848),
  ];
}
