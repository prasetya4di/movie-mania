import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';
import 'package:movie_mania/domain/entities/tv/tv.dart';

abstract class TvRepository {
  Future<Either<ResponseError, TvsResponse>> getTvOnTheAir();

  Future<Either<ResponseError, TvsResponse>> getPopularTv();

  Future<Either<ResponseError, TvsResponse>> getTvRecommendation(int id);

  Future<Either<ResponseError, Tv>> getDetail(int id);

  Future<Either<ResponseError, TvsResponse>> searchTv(String key);
}
