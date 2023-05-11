import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movies_shimmer_view.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movies_view.dart';
import 'package:provider/provider.dart';

class PopularMovieListView extends BaseStatelessView<PopularMovieViewModel> {
  final ScrollController _scrollController;

  const PopularMovieListView(this._scrollController, {super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<PopularMovieViewModel>(builder: (ctx, data, _) {
      return MoviesView(
        movies: data.popularMovies,
        scrollController: _scrollController,
      );
    });
  }

  @override
  Widget loadingView(BuildContext context) {
    return const MoviesShimmerView();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<PopularMovieViewModel>().fetchInitPopularMovies();
  }

  @override
  bool get checkIsLoading => true;
}
