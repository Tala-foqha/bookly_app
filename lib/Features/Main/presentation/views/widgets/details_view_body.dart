// Features/Main/presentation/views/widgets/details_view_body.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/app_bar_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 14,
                        width: 61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffC54444)
                        ),
                      )
                    ],
                  ),
                )
                  
            ],
          ),
        
      
    );
  }
}
