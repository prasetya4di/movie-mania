import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/now_playing_movie_view_model.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/widgets/now_playing_movie_list_view.dart';
import 'package:provider/provider.dart';

class NowPlayingMoviePage extends StatefulWidget {
  const NowPlayingMoviePage({super.key});

  @override
  State<NowPlayingMoviePage> createState() => _NowPlayingMoviePage();
}

class _NowPlayingMoviePage extends State<NowPlayingMoviePage> {
  final _scrollController = ScrollController();
  late final NowPlayingMovieViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = context.read();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        viewModel.fetchNextPage();
      }
    });
    viewModel.fetchFirstPage();
  }

  @override
  Widget build(BuildContext context) {
    return NowPlayingMovieListView(_scrollController);
  }
}
