import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_item_view.dart';

class MoviesView extends StatelessWidget {
  final List<MovieItemViewDataModel> movies;
  final ScrollController scrollController;

  const MoviesView({
    super.key,
    required this.movies,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.68,
        crossAxisCount: 2,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieItemView(movieItem: movies[index]);
      },
      controller: scrollController,
    );
  }
}
