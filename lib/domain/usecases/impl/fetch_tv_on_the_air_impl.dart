import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tvs.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_on_the_air.dart';

class FetchTvOnTheAirImpl implements FetchTvOnTheAir {
  final TvRepository _repository;

  FetchTvOnTheAirImpl(this._repository);

  @override
  Future<Either<ResponseError, Tvs>> call(int page) => _repository
      .getTvOnTheAir(page)
      .mapRight((value) => Tvs.fromTvResponse(value));
}
