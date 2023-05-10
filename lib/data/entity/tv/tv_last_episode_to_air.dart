import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_last_episode_to_air.g.dart';

@JsonSerializable()
class TvLastEpisodeToAir {
  @JSONField(name: "air_date")
  late String airDate;
  @JSONField(name: "episode_number")
  late int episodeNumber;
  late int id;
  late String name;
  late String overview;
  @JSONField(name: "production_code")
  late String productionCode;
  @JSONField(name: "season_number")
  late int seasonNumber;
  @JSONField(name: "still_path")
  dynamic stillPath;
  @JSONField(name: "vote_average")
  late int voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  TvLastEpisodeToAir();

  factory TvLastEpisodeToAir.fromJson(Map<String, dynamic> json) =>
      $TvLastEpisodeToAirFromJson(json);

  Map<String, dynamic> toJson() => $TvLastEpisodeToAirToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
