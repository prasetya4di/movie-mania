import 'dart:convert';

import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_search_response.g.dart';

@JsonSerializable()
class MovieSearchResponse {
  late int page;
  late List<MovieItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  MovieSearchResponse();

  factory MovieSearchResponse.fromJson(Map<String, dynamic> json) =>
      $MovieSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => $MovieSearchResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
