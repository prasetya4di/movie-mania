import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/tv/tv.dart';

abstract class FetchTvDetail {
  Future<Either<ResponseError, Tv>> call(int id);
}
