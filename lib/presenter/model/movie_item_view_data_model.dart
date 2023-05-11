import 'package:movie_mania/domain/entities/movie/movie_item.dart';

class MovieItemViewDataModel {
  final String thumbnailPath;
  final String title;
  final double rating;

  MovieItemViewDataModel(this.thumbnailPath, this.title, this.rating);

  factory MovieItemViewDataModel.fromMovieItem(MovieItem item) =>
      MovieItemViewDataModel(
        item.posterPath,
        item.title,
        item.voteAverage,
      );
}
