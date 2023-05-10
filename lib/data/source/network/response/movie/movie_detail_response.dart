import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_detail_response.g.dart';

@JsonSerializable()
class MovieDetailResponse {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "belongs_to_collection")
  dynamic belongsToCollection;
  late int budget;
  late List<MovieDetailResponseGenres> genres;
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
  late List<MovieDetailResponseProductionCompanies> productionCompanies;
  @JSONField(name: "production_countries")
  late List<MovieDetailResponseProductionCountries> productionCountries;
  @JSONField(name: "release_date")
  late String releaseDate;
  late int revenue;
  late int runtime;
  @JSONField(name: "spoken_languages")
  late List<MovieDetailResponseSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String title;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  MovieDetailResponse();

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      $MovieDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => $MovieDetailResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieDetailResponseGenres {
  late int id;
  late String name;

  MovieDetailResponseGenres();

  factory MovieDetailResponseGenres.fromJson(Map<String, dynamic> json) =>
      $MovieDetailResponseGenresFromJson(json);

  Map<String, dynamic> toJson() => $MovieDetailResponseGenresToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieDetailResponseProductionCompanies {
  late int id;
  @JSONField(name: "logo_path")
  late String logoPath;
  late String name;
  @JSONField(name: "origin_country")
  late String originCountry;

  MovieDetailResponseProductionCompanies();

  factory MovieDetailResponseProductionCompanies.fromJson(
          Map<String, dynamic> json) =>
      $MovieDetailResponseProductionCompaniesFromJson(json);

  Map<String, dynamic> toJson() =>
      $MovieDetailResponseProductionCompaniesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieDetailResponseProductionCountries {
  @JSONField(name: "iso_3166_1")
  late String iso31661;
  late String name;

  MovieDetailResponseProductionCountries();

  factory MovieDetailResponseProductionCountries.fromJson(
          Map<String, dynamic> json) =>
      $MovieDetailResponseProductionCountriesFromJson(json);

  Map<String, dynamic> toJson() =>
      $MovieDetailResponseProductionCountriesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieDetailResponseSpokenLanguages {
  @JSONField(name: "english_name")
  late String englishName;
  @JSONField(name: "iso_639_1")
  late String iso6391;
  late String name;

  MovieDetailResponseSpokenLanguages();

  factory MovieDetailResponseSpokenLanguages.fromJson(
          Map<String, dynamic> json) =>
      $MovieDetailResponseSpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() =>
      $MovieDetailResponseSpokenLanguagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
