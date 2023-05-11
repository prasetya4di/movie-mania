import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Mania"),
      ),
      body: PopularMoviePage(),
    );
  }
}
