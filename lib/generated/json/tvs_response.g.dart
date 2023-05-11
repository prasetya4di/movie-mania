import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

TvsResponse $TvsResponseFromJson(Map<String, dynamic> json) {
  final TvsResponse tvsResponse = TvsResponse();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    tvsResponse.page = page;
  }
  final List<TvItemResponse>? results =
      jsonConvert.convertListNotNull<TvItemResponse>(json['results']);
  if (results != null) {
    tvsResponse.results = results;
  }
  final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
  if (totalPages != null) {
    tvsResponse.totalPages = totalPages;
  }
  final int? totalResults = jsonConvert.convert<int>(json['total_results']);
  if (totalResults != null) {
    tvsResponse.totalResults = totalResults;
  }
  return tvsResponse;
}

Map<String, dynamic> $TvsResponseToJson(TvsResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['results'] = entity.results.map((v) => v.toJson()).toList();
  data['total_pages'] = entity.totalPages;
  data['total_results'] = entity.totalResults;
  return data;
}
