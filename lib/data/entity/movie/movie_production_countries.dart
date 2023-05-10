import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_production_countries.g.dart';

@JsonSerializable()
class MovieProductionCountries {
  @JSONField(name: "iso_3166_1")
  late String iso31661;
  late String name;

  MovieProductionCountries();

  factory MovieProductionCountries.fromJson(Map<String, dynamic> json) =>
      $MovieProductionCountriesFromJson(json);

  Map<String, dynamic> toJson() => $MovieProductionCountriesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
