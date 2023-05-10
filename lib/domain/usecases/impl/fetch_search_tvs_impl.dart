import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tvs.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_search_tvs.dart';

class FetchSearchTvsImpl implements FetchSearchTvs {
  final TvRepository _repository;

  FetchSearchTvsImpl(this._repository);

  @override
  Future<Either<ResponseError, Tvs>> call(int page, String key) => _repository
      .searchTv(page, key)
      .mapRight((value) => Tvs.fromTvResponse(value));
}
