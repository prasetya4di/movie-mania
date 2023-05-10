import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_popular_response.g.dart';

@JsonSerializable()
class MoviePopularResponse {
  late int page;
  late List<MoviePopularResponseResults> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  MoviePopularResponse();

  factory MoviePopularResponse.fromJson(Map<String, dynamic> json) =>
      $MoviePopularResponseFromJson(json);

  Map<String, dynamic> toJson() => $MoviePopularResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MoviePopularResponseResults {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_title")
  late String originalTitle;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "release_date")
  late String releaseDate;
  late String title;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  MoviePopularResponseResults();

  factory MoviePopularResponseResults.fromJson(Map<String, dynamic> json) =>
      $MoviePopularResponseResultsFromJson(json);

  Map<String, dynamic> toJson() => $MoviePopularResponseResultsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
