import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/now_playing_response.g.dart';

@JsonSerializable()
class NowPlayingResponse {
  late NowPlayingResponseDates dates;
  late int page;
  late List<NowPlayingResponseResults> results;
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

@JsonSerializable()
class NowPlayingResponseResults {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_title")
  late String originalTitle;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "release_date")
  late String releaseDate;
  late String title;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  NowPlayingResponseResults();

  factory NowPlayingResponseResults.fromJson(Map<String, dynamic> json) =>
      $NowPlayingResponseResultsFromJson(json);

  Map<String, dynamic> toJson() => $NowPlayingResponseResultsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
