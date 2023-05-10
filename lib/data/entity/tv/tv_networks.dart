import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/tv_networks.g.dart';

@JsonSerializable()
class TvNetworks {
  late String name;
  late int id;
  @JSONField(name: "logo_path")
  dynamic logoPath;
  @JSONField(name: "origin_country")
  late String originCountry;

  TvNetworks();

  factory TvNetworks.fromJson(Map<String, dynamic> json) =>
      $TvNetworksFromJson(json);

  Map<String, dynamic> toJson() => $TvNetworksToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
