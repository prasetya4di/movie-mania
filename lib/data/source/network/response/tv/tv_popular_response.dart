import 'dart:convert';

import 'package:movie_mania/data/entity/tv/tv_item.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_popular_response.g.dart';

@JsonSerializable()
class TvPopularResponse {
  late int page;
  late List<TvItem> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  TvPopularResponse();

  factory TvPopularResponse.fromJson(Map<String, dynamic> json) =>
      $TvPopularResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvPopularResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}