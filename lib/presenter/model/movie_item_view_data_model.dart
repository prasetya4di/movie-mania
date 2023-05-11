import 'package:movie_mania/domain/entities/movie/movie_item.dart';

class MovieItemViewDataModel {
  final int id;
  final String posterPath;
  final String title;
  final double rating;

  MovieItemViewDataModel(this.id, this.posterPath, this.title, this.rating);

  factory MovieItemViewDataModel.fromMovieItem(MovieItem item) =>
      MovieItemViewDataModel(
        item.id,
        "https://image.tmdb.org/t/p/w342/${item.posterPath}",
        item.title,
        item.voteAverage,
      );
}
