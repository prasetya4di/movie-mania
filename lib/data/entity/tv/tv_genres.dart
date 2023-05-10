import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_genres.g.dart';

@JsonSerializable()
class TvGenres {
  late int id;
  late String name;

  TvGenres();

  factory TvGenres.fromJson(Map<String, dynamic> json) =>
      $TvGenresFromJson(json);

  Map<String, dynamic> toJson() => $TvGenresToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
