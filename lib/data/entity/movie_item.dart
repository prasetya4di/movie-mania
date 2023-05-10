import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_item_entity.g.dart';

@JsonSerializable()
class MovieItem {
  late bool adult;
  @JSONField(name: "backdrop_path")
  late String backdropPath;
  @JSONField(name: "genre_ids")
  late List<int> genreIds;
  late int id;
  @JSONField(name: "media_type")
  late String mediaType;
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
  late String releaseDate;
  late bool video;
  @JSONField(name: "vote_average")
  late double voteAverage;
  @JSONField(name: "vote_count")
  late int voteCount;

  MovieItem();

  factory MovieItem.fromJson(Map<String, dynamic> json) =>
      $MovieItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $MovieItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
