// Features/splash/presentation/views/splash_view.dart
import 'package:bookly_app/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

//splash view body
class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff000000),
      body: Center(child: SplashViewBody()),
    );
  }
}
