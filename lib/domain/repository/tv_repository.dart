import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';

abstract class TvRepository {
  Future<Either<ResponseError, TvsResponse>> getTvOnTheAir();

  Future<Either<ResponseError, TvsResponse>> getPopularTv();

  Future<Either<ResponseError, TvsResponse>> getTvRecommendation(int id);

  Future<Either<ResponseError, TvDetailResponse>> getDetail(int id);

  Future<Either<ResponseError, TvsResponse>> searchTv(int page, String key);
}
