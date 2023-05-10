import 'dart:convert';

import 'package:movie_mania/data/entity/movie/movie_item.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_popular_response.g.dart';

@JsonSerializable()
class MoviePopularResponse {
  late int page;
  late List<MovieItem> results;
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
