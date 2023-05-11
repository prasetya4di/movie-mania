import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';

class TvItem {
  final String backdropPath;
  final String firstAirDate;
  final List<int> genreIds;
  final int id;
  final String name;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final double voteAverage;
  final int voteCount;

  TvItem(
      this.backdropPath,
      this.firstAirDate,
      this.genreIds,
      this.id,
      this.name,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.voteAverage,
      this.voteCount);

  factory TvItem.fromResponse(TvItemResponse response) => TvItem(
      response.backdropPath,
      response.firstAirDate,
      response.genreIds,
      response.id,
      response.name,
      response.originCountry,
      response.originalLanguage,
      response.originalName,
      response.overview,
      response.popularity,
      response.posterPath,
      response.voteAverage,
      response.voteCount);
}
