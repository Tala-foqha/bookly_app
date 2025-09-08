// Features/Main/presentation/views/widgets/details_view_body.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/app_bar_details.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/list_type_details.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsViewBody extends StatelessWidget {
   DetailsViewBody({super.key});

final List<String>stars=[
  'assets/svg/star.svg',
  'assets/svg/star.svg',
  'assets/svg/star.svg',
  'assets/svg/star.svg',
  'assets/svg/starblack.svg'

];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 21.5,left: 7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
          
           
              AppBarDetails(),
              AspectRatio(
                aspectRatio: 265/163,
                child: Image.asset('assets/images/Rectangle 6.png',fit: BoxFit.scaleDown,)),
                SizedBox(height: 16,),
                SizedBox(
                  width: 180,
                  child: Divider(
                    height: 3,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                ListTypeDetails(text: 'Horror',color: Color(0xffC54444),),
                SizedBox(width: 8.5,),
                ListTypeDetails(text: 'Sci-Fi',color: Color(0xff4482C5),),
                 SizedBox(width: 8.5,),
                   ListTypeDetails(text: 'Fantasy',color: Color(0xff634848),),



                  ],
                ),
                SizedBox(height: 10,),
                Text('Dead Silence',
                style: AppStyles.title20.copyWith(color: Colors.black),),
                SizedBox(height: 5,),
                Text('UNSPEAKABLE HORRORS',style: AppStyles.subTitle10,),
                SizedBox(height: 15,),

                 Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:List.generate(stars.length, (index){
                return SvgPicture.asset(stars[index]);
              }),
            ),
            SizedBox(height: 10,),

            RichText(
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: GoogleFonts.roboto(
          fontSize: 16,
          height: 1.3,
          color: Colors.black,
          fontWeight: FontWeight.w400, // Regular
        ),
        children: [
          TextSpan(
            text: 'Author : ',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,   // Bold
              fontStyle: FontStyle.normal,   // Normal
            ),
          ),
          TextSpan(
            text: 'S.A. Barnes ; Stacey Kade',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,   // Regular
              fontStyle: FontStyle.italic,   // Italic
            ),
          ),
        ],
      ),
            )  ,
            SizedBox(height: 5,),
            Text('2,736 ratings . 777 reviews',style: AppStyles.bold10,)      ,
            SizedBox(height: 7,) ,
            Center(
              child: Text('Titanic meets The Shining in S.A. Barnes’\n Dead Silence, a SF horror novel in which a\n woman and her crew board a decades-lost luxury cruiser and find the wreckage of a nightmare that hasn\'t yet ended.',
              style: AppStyles.Regular15,textAlign: TextAlign.center,),
            ),
            SizedBox(height: 20,),
            ReadButton()
            ],
          ),
        
      
    );
  }
}

class ReadButton extends StatelessWidget {
  const ReadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 35,
        width: 211,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff3B9AAF)
        ),
        child: Center(
          child: Text('Read Now',
          style: AppStyles.bold10.copyWith(
            fontSize: 16,
            color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}
