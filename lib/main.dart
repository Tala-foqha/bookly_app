// main.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/helper_functions/on_generate_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main()async {
  runApp(const BooklyApp());
  Hive.registerAdapter(BookEntityAdapter());
await  Hive.openBox('featuredBooks');
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: SplashView(),
    );
  }
}
