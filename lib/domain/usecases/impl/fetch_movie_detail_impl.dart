import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_detail.dart';

class FetchMovieDetailImpl implements FetchMovieDetail {
  final MovieRepository _repository;

  FetchMovieDetailImpl(this._repository);

  @override
  Future<Either<ResponseError, Movie>> call(int id) =>
      _repository.getDetail(id).mapRight((value) => Movie.fromResponse(value));
}
