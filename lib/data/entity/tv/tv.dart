import 'dart:convert';

import 'package:movie_mania/data/entity/tv/tv_genres.dart';
import 'package:movie_mania/data/entity/tv/tv_last_episode_to_air.dart';
import 'package:movie_mania/data/entity/tv/tv_networks.dart';
import 'package:movie_mania/data/entity/tv/tv_next_episode_to_air.dart';
import 'package:movie_mania/data/entity/tv/tv_production_countries.dart';
import 'package:movie_mania/data/entity/tv/tv_seasons.dart';
import 'package:movie_mania/data/entity/tv/tv_spoken_languages.dart';
import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv.g.dart';

@JsonSerializable()
class Tv {
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "created_by")
  late List<dynamic> createdBy;
  @JSONField(name: "episode_run_time")
  late List<int> episodeRunTime;
  @JSONField(name: "first_air_date")
  late String firstAirDate;
  late List<TvGenres> genres;
  late String homepage;
  late int id;
  @JSONField(name: "in_production")
  late bool inProduction;
  late List<String> languages;
  @JSONField(name: "last_air_date")
  late String lastAirDate;
  @JSONField(name: "last_episode_to_air")
  late TvLastEpisodeToAir lastEpisodeToAir;
  late String name;
  @JSONField(name: "next_episode_to_air")
  late TvNextEpisodeToAir nextEpisodeToAir;
  late List<TvNetworks> networks;
  @JSONField(name: "number_of_episodes")
  late int numberOfEpisodes;
  @JSONField(name: "number_of_seasons")
  late int numberOfSeasons;
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
  @JSONField(name: "production_companies")
  late List<dynamic> productionCompanies;
  @JSONField(name: "production_countries")
  late List<TvProductionCountries> productionCountries;
  late List<TvSeasons> seasons;
  @JSONField(name: "spoken_languages")
  late List<TvSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String type;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  Tv();

  factory Tv.fromJson(Map<String, dynamic> json) => $TvFromJson(json);

  Map<String, dynamic> toJson() => $TvToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
