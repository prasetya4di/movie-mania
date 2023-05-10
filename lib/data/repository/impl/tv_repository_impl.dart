import 'package:either_dart/either.dart';
import 'package:movie_mania/data/repository/tv_repository.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_on_the_air_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_popular_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_search_response.dart';
import 'package:movie_mania/data/source/network/service/search_service.dart';
import 'package:movie_mania/data/source/network/service/tv_service.dart';
import 'package:movie_mania/domain/entity/tv/tv.dart';

class TvRepositoryImpl implements TvRepository {
  final TvService _tvService;
  final SearchService _searchService;

  TvRepositoryImpl(this._tvService, this._searchService);

  @override
  Future<Either<ResponseError, Tv>> getDetail(int id) async {
    final response = await _tvService.getDetail(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvPopularResponse>> getPopularTv() async {
    final response = await _tvService.getPopularTv();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvOnTheAirResponse>> getTvOnTheAir() async {
    final response = await _tvService.getTvOnTheAir();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvRecommendationResponse>> getTvRecommendation(
      int id) async {
    final response = await _tvService.getTvRecommendation(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvSearchResponse>> searchTv(String key) async {
    final response = await _searchService.searchTv(key);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }
}
