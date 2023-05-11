import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';
import 'package:movie_mania/presenter/view/movie/widgets/movie_item_view.dart';

class MoviesView extends StatelessWidget {
  final List<MovieItemViewDataModel> movies;

  const MoviesView({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.68,
        crossAxisCount: 2,
      ),
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieItemView(movieItem: movies[index]);
      },
    );
  }
}