import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_spoken_languages.g.dart';

@JsonSerializable()
class TvSpokenLanguages {
  @JSONField(name: "english_name")
  late String englishName;
  @JSONField(name: "iso_639_1")
  late String iso6391;
  late String name;

  TvSpokenLanguages();

  factory TvSpokenLanguages.fromJson(Map<String, dynamic> json) =>
      $TvSpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() => $TvSpokenLanguagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
