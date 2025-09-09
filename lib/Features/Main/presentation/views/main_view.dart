// Features/Main/presentation/views/main_view.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/app_bar_widgets.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/custom_navigator_bar.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/home_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/main_view_body.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outlined_text/outlined_text.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = 'Main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainViewBody());
  }
}
