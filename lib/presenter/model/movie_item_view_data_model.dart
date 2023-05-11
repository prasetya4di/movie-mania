import 'package:movie_mania/domain/entities/movie/movie_item.dart';

class MovieItemViewDataModel {
  final String posterPath;
  final String title;
  final double rating;

  MovieItemViewDataModel(this.posterPath, this.title, this.rating);

  factory MovieItemViewDataModel.fromMovieItem(MovieItem item) =>
      MovieItemViewDataModel(
        "https://image.tmdb.org/t/p/original/${item.posterPath}",
        item.title,
        item.voteAverage,
      );
}
