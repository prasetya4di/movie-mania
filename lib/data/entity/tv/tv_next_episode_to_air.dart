import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_next_episode_to_air.g.dart';

@JsonSerializable()
class TvNextEpisodeToAir {
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

  TvNextEpisodeToAir();

  factory TvNextEpisodeToAir.fromJson(Map<String, dynamic> json) =>
      $TvNextEpisodeToAirFromJson(json);

  Map<String, dynamic> toJson() => $TvNextEpisodeToAirToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
