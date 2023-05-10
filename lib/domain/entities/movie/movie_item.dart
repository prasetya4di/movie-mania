import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';

class MovieItem {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String mediaType;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieItem(
      this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.mediaType,
      this.title,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory MovieItem.fromResponse(MovieItemResponse response) => MovieItem(
      response.adult,
      response.backdropPath,
      response.genreIds,
      response.id,
      response.mediaType,
      response.title,
      response.originalLanguage,
      response.originalTitle,
      response.overview,
      response.popularity,
      response.posterPath,
      response.releaseDate,
      response.video,
      response.voteAverage,
      response.voteCount);
}
