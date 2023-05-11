import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie/viewmodel/now_playing_movie_view_model.dart';
import 'package:movie_mania/presenter/view/movie/viewmodel/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage>
    with AutomaticKeepAliveClientMixin {
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
              Tab(text: "Now Playing"),
              Tab(text: "Popular"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ItemPage<NowPlayingMovieViewModel>(),
            ItemPage<PopularMovieViewModel>(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
