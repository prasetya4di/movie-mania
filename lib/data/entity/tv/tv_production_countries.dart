import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_production_countries.g.dart';

@JsonSerializable()
class TvProductionCountries {
  @JSONField(name: "iso_3166_1")
  late String iso31661;
  late String name;

  TvProductionCountries();

  factory TvProductionCountries.fromJson(Map<String, dynamic> json) =>
      $TvProductionCountriesFromJson(json);

  Map<String, dynamic> toJson() => $TvProductionCountriesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
