import 'dart:convert';

import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/now_playing_response.g.dart';

@JsonSerializable()
class NowPlayingResponse {
  late NowPlayingResponseDates dates;
  late int page;
  late List<MovieItemResponse> results;
  @JSONField(name: "total_pages")
  late int totalPages;
  @JSONField(name: "total_results")
  late int totalResults;

  NowPlayingResponse();

  factory NowPlayingResponse.fromJson(Map<String, dynamic> json) =>
      $NowPlayingResponseFromJson(json);

  Map<String, dynamic> toJson() => $NowPlayingResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NowPlayingResponseDates {
  late String maximum;
  late String minimum;

  NowPlayingResponseDates();

  factory NowPlayingResponseDates.fromJson(Map<String, dynamic> json) =>
      $NowPlayingResponseDatesFromJson(json);

  Map<String, dynamic> toJson() => $NowPlayingResponseDatesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
