import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_genres.g.dart';

@JsonSerializable()
class MovieGenres {
  late int id;
  late String name;

  MovieGenres();

  factory MovieGenres.fromJson(Map<String, dynamic> json) =>
      $MovieGenresFromJson(json);

  Map<String, dynamic> toJson() => $MovieGenresToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
