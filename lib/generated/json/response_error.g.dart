import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

ResponseError $ResponseErrorFromJson(Map<String, dynamic> json) {
  final ResponseError responseError = ResponseError();
  final int? statusCode = jsonConvert.convert<int>(json['status_code']);
  if (statusCode != null) {
    responseError.statusCode = statusCode;
  }
  final String? statusMessage =
      jsonConvert.convert<String>(json['status_message']);
  if (statusMessage != null) {
    responseError.statusMessage = statusMessage;
  }
  final bool? success = jsonConvert.convert<bool>(json['success']);
  if (success != null) {
    responseError.success = success;
  }
  return responseError;
}

Map<String, dynamic> $ResponseErrorToJson(ResponseError entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status_code'] = entity.statusCode;
  data['status_message'] = entity.statusMessage;
  data['success'] = entity.success;
  return data;
}
