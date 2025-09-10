// main.dart
import 'package:bookly_app/Features/Main/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:bookly_app/Features/Main/domain/use_case/fetch_newest_books_use_case.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/Main/presentation/maneger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/helper_functions/on_generate_route.dart';
import 'package:bookly_app/core/utils/fuctions/set_up_services_locators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  runApp(const BooklyApp());
await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());

await  Hive.openBox<BookEntity>('featuredBooks');
await  Hive.openBox<BookEntity>('newestBooks');
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(FetchFeaturedBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>())),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FetchNewestBooksUseCase(homeRepo: getIt.get<HomeRepoImpl>())
          ),
        ),
      ],
     
      child: MaterialApp(
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.routeName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
        home: SplashView(),
      ),
    );
  }
}
