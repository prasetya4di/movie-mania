import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/now_playing_movie_page.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movie Mania"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Now Playing"),
              Tab(text: "Popular"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [NowPlayingMoviePage(), PopularMoviePage()],
        ),
      ),
    );
  }
}
