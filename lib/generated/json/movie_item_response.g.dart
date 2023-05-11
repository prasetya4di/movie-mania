import 'package:movie_mania/data/source/network/response/movie/movie_item_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

MovieItemResponse $MovieItemResponseFromJson(Map<String, dynamic> json) {
  final MovieItemResponse movieItemResponse = MovieItemResponse();
  final bool? adult = jsonConvert.convert<bool>(json['adult']);
  if (adult != null) {
    movieItemResponse.adult = adult;
  }
  final String? backdropPath =
      jsonConvert.convert<String>(json['backdrop_path']);
  if (backdropPath != null) {
    movieItemResponse.backdropPath = backdropPath;
  }
  final List<int>? genreIds =
      jsonConvert.convertListNotNull<int>(json['genre_ids']);
  if (genreIds != null) {
    movieItemResponse.genreIds = genreIds;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    movieItemResponse.id = id;
  }
  final String? mediaType = jsonConvert.convert<String>(json['media_type']);
  if (mediaType != null) {
    movieItemResponse.mediaType = mediaType;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    movieItemResponse.title = title;
  }
  final String? originalLanguage =
      jsonConvert.convert<String>(json['original_language']);
  if (originalLanguage != null) {
    movieItemResponse.originalLanguage = originalLanguage;
  }
  final String? originalTitle =
      jsonConvert.convert<String>(json['original_title']);
  if (originalTitle != null) {
    movieItemResponse.originalTitle = originalTitle;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    movieItemResponse.overview = overview;
  }
  final double? popularity = jsonConvert.convert<double>(json['popularity']);
  if (popularity != null) {
    movieItemResponse.popularity = popularity;
  }
  final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
  if (posterPath != null) {
    movieItemResponse.posterPath = posterPath;
  }
  final String? releaseDate = jsonConvert.convert<String>(json['release_date']);
  if (releaseDate != null) {
    movieItemResponse.releaseDate = releaseDate;
  }
  final bool? video = jsonConvert.convert<bool>(json['video']);
  if (video != null) {
    movieItemResponse.video = video;
  }
  final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
  if (voteAverage != null) {
    movieItemResponse.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    movieItemResponse.voteCount = voteCount;
  }
  return movieItemResponse;
}

Map<String, dynamic> $MovieItemResponseToJson(MovieItemResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adult'] = entity.adult;
  data['backdrop_path'] = entity.backdropPath;
  data['genre_ids'] = entity.genreIds;
  data['id'] = entity.id;
  data['media_type'] = entity.mediaType;
  data['title'] = entity.title;
  data['original_language'] = entity.originalLanguage;
  data['original_title'] = entity.originalTitle;
  data['overview'] = entity.overview;
  data['popularity'] = entity.popularity;
  data['poster_path'] = entity.posterPath;
  data['release_date'] = entity.releaseDate;
  data['video'] = entity.video;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}
