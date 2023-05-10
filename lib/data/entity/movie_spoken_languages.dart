import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_spoken_languages.g.dart';

@JsonSerializable()
class MovieSpokenLanguages {
  @JSONField(name: "english_name")
  late String englishName;
  @JSONField(name: "iso_639_1")
  late String iso6391;
  late String name;

  MovieSpokenLanguages();

  factory MovieSpokenLanguages.fromJson(Map<String, dynamic> json) =>
      $MovieSpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() => $MovieSpokenLanguagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
