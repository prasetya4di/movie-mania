import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_detail_response.g.dart';

@JsonSerializable()
class TvDetailResponse {
  @JSONField(name: "backdrop_path")
  String? backdropPath;
  @JSONField(name: "episode_run_time")
  late List<int> episodeRunTime;
  @JSONField(name: "first_air_date")
  late String firstAirDate;
  late List<TvDetailResponseGenres> genres;
  late String homepage;
  late int id;
  @JSONField(name: "in_production")
  late bool inProduction;
  late List<String> languages;
  @JSONField(name: "last_air_date")
  late String lastAirDate;
  @JSONField(name: "last_episode_to_air")
  late TvDetailResponseLastEpisodeToAir lastEpisodeToAir;
  late String name;
  @JSONField(name: "next_episode_to_air")
  TvDetailResponseNextEpisodeToAir? nextEpisodeToAir;
  late List<TvDetailResponseNetworks> networks;
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
  @JSONField(name: "production_countries")
  late List<TvDetailResponseProductionCountries> productionCountries;
  late List<TvDetailResponseSeasons> seasons;
  @JSONField(name: "spoken_languages")
  late List<TvDetailResponseSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String type;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  TvDetailResponse();

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      $TvDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => $TvDetailResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseGenres {
  late int id;
  late String name;

  TvDetailResponseGenres();

  factory TvDetailResponseGenres.fromJson(Map<String, dynamic> json) =>
      $TvDetailResponseGenresFromJson(json);

  Map<String, dynamic> toJson() => $TvDetailResponseGenresToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseLastEpisodeToAir {
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

  TvDetailResponseLastEpisodeToAir();

  factory TvDetailResponseLastEpisodeToAir.fromJson(
          Map<String, dynamic> json) =>
      $TvDetailResponseLastEpisodeToAirFromJson(json);

  Map<String, dynamic> toJson() =>
      $TvDetailResponseLastEpisodeToAirToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseNextEpisodeToAir {
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

  TvDetailResponseNextEpisodeToAir();

  factory TvDetailResponseNextEpisodeToAir.fromJson(
          Map<String, dynamic> json) =>
      $TvDetailResponseNextEpisodeToAirFromJson(json);

  Map<String, dynamic> toJson() =>
      $TvDetailResponseNextEpisodeToAirToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseNetworks {
  late String name;
  late int id;
  @JSONField(name: "logo_path")
  dynamic logoPath;
  @JSONField(name: "origin_country")
  late String originCountry;

  TvDetailResponseNetworks();

  factory TvDetailResponseNetworks.fromJson(Map<String, dynamic> json) =>
      $TvDetailResponseNetworksFromJson(json);

  Map<String, dynamic> toJson() => $TvDetailResponseNetworksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseProductionCountries {
  @JSONField(name: "iso_3166_1")
  late String iso31661;
  late String name;

  TvDetailResponseProductionCountries();

  factory TvDetailResponseProductionCountries.fromJson(
          Map<String, dynamic> json) =>
      $TvDetailResponseProductionCountriesFromJson(json);

  Map<String, dynamic> toJson() =>
      $TvDetailResponseProductionCountriesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseSeasons {
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

  TvDetailResponseSeasons();

  factory TvDetailResponseSeasons.fromJson(Map<String, dynamic> json) =>
      $TvDetailResponseSeasonsFromJson(json);

  Map<String, dynamic> toJson() => $TvDetailResponseSeasonsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class TvDetailResponseSpokenLanguages {
  @JSONField(name: "english_name")
  late String englishName;
  @JSONField(name: "iso_639_1")
  late String iso6391;
  late String name;

  TvDetailResponseSpokenLanguages();

  factory TvDetailResponseSpokenLanguages.fromJson(Map<String, dynamic> json) =>
      $TvDetailResponseSpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() => $TvDetailResponseSpokenLanguagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
