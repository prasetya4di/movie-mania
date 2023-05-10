import 'dart:convert';

import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_recommendation_response.g.dart';

@JsonSerializable()
class TvRecommendationResponse {
  late int page;
  late List<TvItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  TvRecommendationResponse();

  factory TvRecommendationResponse.fromJson(Map<String, dynamic> json) =>
      $TvRecommendationResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvRecommendationResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
