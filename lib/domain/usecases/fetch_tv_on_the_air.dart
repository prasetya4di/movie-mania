import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tvs.dart';

abstract class FetchTvOnTheAir {
  Future<Either<ResponseError, Tvs>> call(int page);
}
