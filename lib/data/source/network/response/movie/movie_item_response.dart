import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_item_response.g.dart';

@JsonSerializable()
class MovieItemResponse {
  late bool adult;
  @JSONField(name: "backdrop_path")
  String? backdropPath;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  @JSONField(name: "media_type")
  String? mediaType;
  late String title;
  @JSONField(name: "original_language")
  late String originalLanguage;
  @JSONField(name: "original_title")
  late String originalTitle;
  late String overview;
  late double popularity;
  @JSONField(name: "poster_path")
  late String posterPath;
  @JSONField(name: "release_date")
  String? releaseDate;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  MovieItemResponse();

  factory MovieItemResponse.fromJson(Map<String, dynamic> json) =>
      $MovieItemResponseFromJson(json);

  Map<String, dynamic> toJson() => $MovieItemResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
