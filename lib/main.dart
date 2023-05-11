import 'package:flutter/material.dart';
import 'package:movie_mania/di.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_page.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Movie Mania',
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blueGrey,
              backgroundColor: Colors.black,
              brightness: Brightness.dark),
        ),
        home: const MovieDetailPage(movieId: 758323),
      ),
    );
  }
}
