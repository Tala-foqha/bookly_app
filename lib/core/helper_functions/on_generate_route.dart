// core/helper_functions/on_generate_route.dart
import 'package:bookly_app/Features/Main/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/repos/home_repo.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_book_details_use_case.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/details/details_cubit.dart';
import 'package:bookly_app/Features/Main/presentation/views/main_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/fuctions/set_up_services_locators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => MainView());
    case DetailsView.routeName:
       final bookId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => DetailsCubit(FetchBookDetailsUseCase(homeRepo:getIt.get<HomeRepoImpl>() ))..fetchDetailsBooks(bookId: bookId),
          child: DetailsView(),
        ),
      );

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
