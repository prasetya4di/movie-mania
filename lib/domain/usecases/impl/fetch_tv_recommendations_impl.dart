import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tvs.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_recommendations.dart';

class FetchTvRecommendationsImpl implements FetchTvRecommendations {
  final TvRepository _repository;

  FetchTvRecommendationsImpl(this._repository);

  @override
  Future<Either<ResponseError, Tvs>> call(int id, int page) => _repository
      .getTvRecommendation(id, page)
      .mapRight((value) => Tvs.fromTvResponse(value));
}
