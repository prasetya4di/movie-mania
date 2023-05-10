import 'dart:convert';

import 'package:movie_mania/data/entity/movie/movie_item.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_recommendation_response.g.dart';

@JsonSerializable()
class MovieRecommendationResponse {
  late int page;
  late List<MovieItem> results;
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
