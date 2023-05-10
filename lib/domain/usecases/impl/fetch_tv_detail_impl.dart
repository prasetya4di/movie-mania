import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tv.dart';
import 'package:movie_mania/domain/repository/tv_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_detail.dart';

class FetchTvDetailImpl implements FetchTvDetail {
  final TvRepository _repository;

  FetchTvDetailImpl(this._repository);

  @override
  Future<Either<ResponseError, Tv>> call(int id) =>
      _repository.getDetail(id).mapRight((value) => Tv.fromResponse(value));
}
