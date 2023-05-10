import 'dart:convert';

import 'package:movie_mania/data/entity/movie_genres.dart';
import 'package:movie_mania/data/entity/movie_production_companies.dart';
import 'package:movie_mania/data/entity/movie_production_countries.dart';
import 'package:movie_mania/data/entity/movie_spoken_languages.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie.g.dart';

@JsonSerializable()
class Movie {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "belongs_to_collection")
  dynamic belongsToCollection;
  late int budget;
  late List<MovieGenres> genres;
  late String homepage;
  late int id;
  @JSONField(name: "imdb_id")
  late String imdbId;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_title")
  late String originalTitle;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "production_companies")
  late List<MovieProductionCompanies> productionCompanies;
  @JSONField(name: "production_countries")
  late List<MovieProductionCountries> productionCountries;
  @JSONField(name: "release_date")
  late String releaseDate;
  late int revenue;
  late int runtime;
  @JSONField(name: "spoken_languages")
  late List<MovieSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String title;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  Movie();

  factory Movie.fromJson(Map<String, dynamic> json) => $MovieFromJson(json);

  Map<String, dynamic> toJson() => $MovieToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
