import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';
import 'package:movie_mania/presenter/view/movie/widgets/movie_poster_view.dart';
import 'package:movie_mania/presenter/view/movie/widgets/movie_rating.dart';

class MovieItemView extends StatelessWidget {
  final MovieItemViewDataModel movieItem;

  const MovieItemView({super.key, required this.movieItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          MoviePosterView(posterPath: movieItem.posterPath),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: MovieRating(rating: movieItem.rating),
            ),
          ),
        ],
      ),
    );
  }
}
