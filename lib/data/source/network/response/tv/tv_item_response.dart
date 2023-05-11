import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_item_response.g.dart';

@JsonSerializable()
class TvItemResponse {
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "first_air_date")
  late String firstAirDate;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  late String name;
  @JSONField(name: "origin_country")
  late List<String> originCountry;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_name")
  late String originalName;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  TvItemResponse();

  factory TvItemResponse.fromJson(Map<String, dynamic> json) =>
      $TvItemResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvItemResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
