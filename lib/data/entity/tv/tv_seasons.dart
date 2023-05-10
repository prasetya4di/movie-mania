import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_seasons.g.dart';

@JsonSerializable()
class TvSeasons {
  @JSONField(name: "air_date")
  late String airDate;
  @JSONField(name: "episode_count")
  late int episodeCount;
  late int id;
  late String name;
  late String overview;
  @JSONField(name: "poster_path")
  dynamic posterPath;
  @JSONField(name: "season_number")
  late int seasonNumber;

  TvSeasons();

  factory TvSeasons.fromJson(Map<String, dynamic> json) =>
      $TvSeasonsFromJson(json);

  Map<String, dynamic> toJson() => $TvSeasonsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
