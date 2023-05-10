import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/movie_production_companies.g.dart';

@JsonSerializable()
class MovieProductionCompanies {
  late int id;
  @JSONField(name: "logo_path")
  late String logoPath;
  late String name;
  @JSONField(name: "origin_country")
  late String originCountry;

  MovieProductionCompanies();

  factory MovieProductionCompanies.fromJson(Map<String, dynamic> json) =>
      $MovieProductionCompaniesFromJson(json);

  Map<String, dynamic> toJson() => $MovieProductionCompaniesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
