import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';
import 'package:movie_mania/data/source/network/service/search_service.dart';
import 'package:movie_mania/data/source/network/service/tv_service.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';

class TvRepositoryImpl implements TvRepository {
  final TvService _tvService;
  final SearchService _searchService;

  TvRepositoryImpl(this._tvService, this._searchService);

  @override
  Future<Either<ResponseError, TvDetailResponse>> getDetail(int id) async {
    final response = await _tvService.getDetail(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvsResponse>> getPopularTv() async {
    final response = await _tvService.getPopularTv();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvsResponse>> getTvOnTheAir() async {
    final response = await _tvService.getTvOnTheAir();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvsResponse>> getTvRecommendation(int id) async {
    final response = await _tvService.getTvRecommendation(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, TvsResponse>> searchTv(
      int page, String key) async {
    final response = await _searchService.searchTv(page, key);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }
}
