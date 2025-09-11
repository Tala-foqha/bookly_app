// Features/Main/presentation/views/main_view.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/main_view_body.dart';

import 'package:flutter/material.dart';



class MainView extends StatelessWidget {
  const MainView({super.key});
  static const routeName = 'Main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainViewBody());
  }
}
