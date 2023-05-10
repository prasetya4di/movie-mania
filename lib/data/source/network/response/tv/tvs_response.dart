import 'dart:convert';

import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tvs_response.g.dart';

@JsonSerializable()
class TvsResponse {
  late int page;
  late List<TvItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  TvsResponse();

  factory TvsResponse.fromJson(Map<String, dynamic> json) =>
      $TvsResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvsResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
