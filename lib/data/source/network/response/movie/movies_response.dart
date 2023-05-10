import 'dart:convert';

import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movies_response.g.dart';

@JsonSerializable()
class MoviesResponse {
  late int page;
  late List<MovieItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  MoviesResponse();

  factory MoviesResponse.fromJson(Map<String, dynamic> json) =>
      $MoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => $MoviesResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
