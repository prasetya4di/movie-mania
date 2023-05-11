import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_poster_view.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_rating.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_title_view.dart';

class MovieItemView extends StatelessWidget {
  final MovieItemViewDataModel movieItem;

  const MovieItemView({super.key, required this.movieItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          MoviePosterView(posterPath: movieItem.posterPath),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MovieTitleView(title: movieItem.title),
                MovieRating(rating: movieItem.rating)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
