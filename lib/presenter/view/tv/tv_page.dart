import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/now_playing_movie_page.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_page.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movie Mania"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "On Air"),
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

  @override
  bool get wantKeepAlive => true;
}
