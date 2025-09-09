// Features/splash/presentation/views/widgets/splash_view_body.dart
import 'package:bookly_app/Features/Main/presentation/views/main_view.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outlined_text/outlined_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void initState() {
    super.initState();
    excuteNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 43),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedText(
            text: Text('Booby', style: AppStyles.bold64),
            strokes: [OutlinedTextStroke(color: Colors.white, width: 2)],
          ),

          // النص مع الحدود (Stroke + Fill) باستخدام Stack
          // Stack(
          //   children: [
          //     Text(
          //       'Booby',
          //       style: TextStyle(
          //         fontSize: 64,
          //         fontWeight: FontWeight.bold,
          //         foreground: Paint()
          //           ..style = PaintingStyle.stroke
          //           ..strokeWidth = 2
          //           ..color = Colors.white,
          //       ),
          //     ),
          //     const Text(
          //       'Booby',
          //       style: TextStyle(
          //         fontSize: 64,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 80),

          // صورة الـ B
          Image.asset('assets/images/B.png', fit: BoxFit.fill, height: 294),

          const Spacer(),

          // SVG تحت
          SvgPicture.asset(
            'assets/svg/akar-icons_book.svg',
            color: Colors.white,
          ),

          //const SizedBox(height: 37),
        ],
      ),
    );
  }

  void excuteNavigation() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MainView.routeName);
    });
  }
}
