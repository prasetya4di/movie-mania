import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/domain/entities/tv/tv.dart';

class DetailViewDataModel {
  final String title;
  final double rating;
  final String genres;
  final String runtime;
  final String overview;
  final String posterPath;

  DetailViewDataModel(
    this.title,
    this.rating,
    this.genres,
    this.runtime,
    this.overview,
    this.posterPath,
  );

  factory DetailViewDataModel.fromMovie(Movie data) => DetailViewDataModel(
        data.originalTitle,
        data.voteAverage,
        data.genres,
        data.runtime,
        data.overview,
        "https://image.tmdb.org/t/p/original/${data.posterPath}",
      );

  factory DetailViewDataModel.fromTv(Tv data) => DetailViewDataModel(
        data.originalName,
        data.voteAverage,
        data.genres.map((e) => e.name).join(", "),
        "",
        data.overview,
        "https://image.tmdb.org/t/p/original/${data.posterPath}",
      );
}
