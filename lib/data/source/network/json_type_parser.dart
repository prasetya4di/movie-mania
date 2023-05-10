import 'package:movie_mania/data/source/network/parser_exception.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_popular_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_search_response.dart';
import 'package:movie_mania/data/source/network/response/movie/now_playing_response.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_on_the_air_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_popular_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_search_response.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonTypeParser {
  static const Map<Type, JsonFactory> factories = {
    NowPlayingResponse: NowPlayingResponse.fromJson,
    MoviePopularResponse: MoviePopularResponse.fromJson,
    MovieRecommendationResponse: MovieRecommendationResponse.fromJson,
    MovieSearchResponse: MovieSearchResponse.fromJson,
    TvOnTheAirResponse: TvOnTheAirResponse.fromJson,
    TvPopularResponse: TvPopularResponse.fromJson,
    TvRecommendationResponse: TvRecommendationResponse.fromJson,
    TvSearchResponse: TvSearchResponse.fromJson,
    ResponseError: ResponseError.fromJson
  };

  static dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) return _decodeList<T>(entity);

    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);

    return entity;
  }

  static T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      /// throw serializer not found error;
      throw JsonFactoryNotFoundException(T.toString());
    }

    return jsonFactory(values);
  }

  static List<T> _decodeList<T>(Iterable values) => values
      .where((dynamic v) => v != null)
      .map((dynamic v) => decode<T>(v) as T)
      .toList();
}
