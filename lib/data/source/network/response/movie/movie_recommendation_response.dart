import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_recommendation_response.g.dart';

@JsonSerializable()
class MovieRecommendationResponse {
  late int page;
  late List<MovieRecommendationResponseResults> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  MovieRecommendationResponse();

  factory MovieRecommendationResponse.fromJson(Map<String, dynamic> json) =>
      $MovieRecommendationResponseFromJson(json);

  Map<String, dynamic> toJson() => $MovieRecommendationResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieRecommendationResponseResults {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  @JSONField(name: "media_type")
  late String mediaType;
  late String title;
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
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  MovieRecommendationResponseResults();

  factory MovieRecommendationResponseResults.fromJson(
          Map<String, dynamic> json) =>
      $MovieRecommendationResponseResultsFromJson(json);

  Map<String, dynamic> toJson() =>
      $MovieRecommendationResponseResultsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
