import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tvs.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_popular_tvs.dart';

class FetchPopularTvsImpl implements FetchPopularTvs {
  final TvRepository _repository;

  FetchPopularTvsImpl(this._repository);

  @override
  Future<Either<ResponseError, Tvs>> call(int page) => _repository
      .getPopularTv(page)
      .mapRight((value) => Tvs.fromTvResponse(value));
}
