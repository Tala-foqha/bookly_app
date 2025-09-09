// core/helper_functions/on_generate_route.dart
import 'package:bookly_app/Features/Main/presentation/views/main_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => MainView());
    case DetailsView.routeName:
      return MaterialPageRoute(builder: (context) => DetailsView());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
