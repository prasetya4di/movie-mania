import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/now_playing_movie_page.dart';

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
      body: const NowPlayingMoviePage(),
    );
  }
}
