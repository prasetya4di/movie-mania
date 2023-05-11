import 'package:movie_mania/data/source/network/response/tv/tv_item_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

TvItemResponse $TvItemResponseFromJson(Map<String, dynamic> json) {
  final TvItemResponse tvItemResponse = TvItemResponse();
  final String? backdropPath =
      jsonConvert.convert<String>(json['backdrop_path']);
  if (backdropPath != null) {
    tvItemResponse.backdropPath = backdropPath;
  }
  final String? firstAirDate =
      jsonConvert.convert<String>(json['first_air_date']);
  if (firstAirDate != null) {
    tvItemResponse.firstAirDate = firstAirDate;
  }
  final List<int>? genreIds =
      jsonConvert.convertListNotNull<int>(json['genre_ids']);
  if (genreIds != null) {
    tvItemResponse.genreIds = genreIds;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvItemResponse.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvItemResponse.name = name;
  }
  final List<String>? originCountry =
      jsonConvert.convertListNotNull<String>(json['origin_country']);
  if (originCountry != null) {
    tvItemResponse.originCountry = originCountry;
  }
  final String? originalLanguage =
      jsonConvert.convert<String>(json['original_language']);
  if (originalLanguage != null) {
    tvItemResponse.originalLanguage = originalLanguage;
  }
  final String? originalName =
      jsonConvert.convert<String>(json['original_name']);
  if (originalName != null) {
    tvItemResponse.originalName = originalName;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    tvItemResponse.overview = overview;
  }
  final double? popularity = jsonConvert.convert<double>(json['popularity']);
  if (popularity != null) {
    tvItemResponse.popularity = popularity;
  }
  final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
  if (posterPath != null) {
    tvItemResponse.posterPath = posterPath;
  }
  final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
  if (voteAverage != null) {
    tvItemResponse.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    tvItemResponse.voteCount = voteCount;
  }
  return tvItemResponse;
}

Map<String, dynamic> $TvItemResponseToJson(TvItemResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['backdrop_path'] = entity.backdropPath;
  data['first_air_date'] = entity.firstAirDate;
  data['genre_ids'] = entity.genreIds;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['origin_country'] = entity.originCountry;
  data['original_language'] = entity.originalLanguage;
  data['original_name'] = entity.originalName;
  data['overview'] = entity.overview;
  data['popularity'] = entity.popularity;
  data['poster_path'] = entity.posterPath;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}
