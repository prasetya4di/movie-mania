import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';

abstract class FetchMovieDetail {
  Future<Either<ResponseError, Movie>> call(int id);
}
