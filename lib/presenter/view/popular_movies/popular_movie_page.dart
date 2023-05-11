import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movies_view.dart';
import 'package:provider/provider.dart';

class PopularMoviePage extends BaseStatelessView<PopularMovieViewModel> {
  const PopularMoviePage({super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<PopularMovieViewModel>(builder: (ctx, data, _) {
      return MoviesView(movies: data.popularMovies);
    });
  }

  @override
  Widget loadingView(BuildContext context) {
    return const CircularProgressIndicator();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<PopularMovieViewModel>().fetchPopularMovies();
  }

  @override
  void init(BuildContext context) {
    context.read<PopularMovieViewModel>().fetchPopularMovies();
  }
}
