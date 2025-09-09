// Features/Main/presentation/views/widgets/main_view_body.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/app_bar_widgets.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/custom_navigator_bar.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/home_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(
            top: 32,
            bottom: 32,
            left: 25,
            right: 25,
          ),
          child: AppBarWidget(),
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: HomeView(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomNavigatorBar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
