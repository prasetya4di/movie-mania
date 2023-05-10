import 'dart:convert';

import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_search_response.g.dart';

@JsonSerializable()
class TvSearchResponse {
  late int page;
  late List<TvItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  TvSearchResponse();

  factory TvSearchResponse.fromJson(Map<String, dynamic> json) =>
      $TvSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvSearchResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
