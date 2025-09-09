// Features/Main/presentation/views/widgets/app_bar_widgets.dart

import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outlined_text/outlined_text.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedText(
          text: Text('Booby', style: AppStyles.bold64.copyWith(fontSize: 24)),
          strokes: [OutlinedTextStroke(color: Colors.white, width: 1)],
        ),
        Spacer(),
        Row(
          children: [
            SvgPicture.asset('assets/svg/Sun.svg'),
            // SizedBox(width: 14,),
            SvgPicture.asset('assets/svg/Ellipse 2.svg'),
          ],
        ),
      ],
    );
  }
}
