import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

MoviesResponse $MoviesResponseFromJson(Map<String, dynamic> json) {
  final MoviesResponse moviesResponse = MoviesResponse();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    moviesResponse.page = page;
  }
  final List<MovieItemResponse>? results =
      jsonConvert.convertListNotNull<MovieItemResponse>(json['results']);
  if (results != null) {
    moviesResponse.results = results;
  }
  final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
  if (totalPages != null) {
    moviesResponse.totalPages = totalPages;
  }
  final int? totalResults = jsonConvert.convert<int>(json['total_results']);
  if (totalResults != null) {
    moviesResponse.totalResults = totalResults;
  }
  return moviesResponse;
}

Map<String, dynamic> $MoviesResponseToJson(MoviesResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['results'] = entity.results.map((v) => v.toJson()).toList();
  data['total_pages'] = entity.totalPages;
  data['total_results'] = entity.totalResults;
  return data;
}
