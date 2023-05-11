import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_item_view.dart';
import 'package:provider/provider.dart';

class PopularMoviePage extends BaseStatelessView<PopularMovieViewModel> {
  const PopularMoviePage({super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<PopularMovieViewModel>(builder: (ctx, data, _) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.68,
          crossAxisCount: 2,
        ),
        itemCount: data.popularMovies.length,
        itemBuilder: (context, index) {
          return MovieItemView(movieItem: data.popularMovies[index]);
        },
      );
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
