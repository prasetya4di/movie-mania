import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movies.dart';

abstract class FetchSearchMovies {
  Future<Either<ResponseError, Movies>> call(int page, String key);
}
