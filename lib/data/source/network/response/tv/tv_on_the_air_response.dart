import 'dart:convert';

import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_on_the_air_response.g.dart';

@JsonSerializable()
class TvOnTheAirResponse {
  late int page;
  late List<TvItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  TvOnTheAirResponse();

  factory TvOnTheAirResponse.fromJson(Map<String, dynamic> json) =>
      $TvOnTheAirResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvOnTheAirResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
