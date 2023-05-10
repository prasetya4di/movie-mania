import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_on_the_air_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_popular_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_search_response.dart';
import 'package:movie_mania/domain/entity/tv/tv.dart';

abstract class TvRepository {
  Future<Either<ResponseError, TvOnTheAirResponse>> getTvOnTheAir();

  Future<Either<ResponseError, TvPopularResponse>> getPopularTv();

  Future<Either<ResponseError, TvRecommendationResponse>> getTvRecommendation(
      int id);

  Future<Either<ResponseError, Tv>> getDetail(int id);

  Future<Either<ResponseError, TvSearchResponse>> searchTv(String key);
}
