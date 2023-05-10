import 'dart:convert';

import 'package:movie_mania/generated/json/base/json_field.dart';
import 'package:movie_mania/generated/json/response_error.g.dart';

@JsonSerializable()
class ResponseError {
  @JSONField(name: "status_code")
  late int statusCode;
  @JSONField(name: "status_message")
  late String statusMessage;
  late bool success;

  ResponseError();

  factory ResponseError.fromJson(Map<String, dynamic> json) =>
      $ResponseErrorFromJson(json);

  Map<String, dynamic> toJson() => $ResponseErrorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}