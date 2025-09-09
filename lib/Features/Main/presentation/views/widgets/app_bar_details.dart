// Features/Main/presentation/views/widgets/app_bar_details.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            'assets/svg/ArrowLeft.svg',
            height: 32,
            width: 32,
          ),
        ),
        Spacer(),
        SvgPicture.asset(
          'assets/svg/save.svg',
          height: 32,
          width: 32,
          fit: BoxFit.scaleDown,
        ),
      ],
    );
  }
}
