import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movies.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_popular_movies.dart';

class FetchPopularMoviesImpl implements FetchPopularMovies {
  final MovieRepository _repository;

  FetchPopularMoviesImpl(this._repository);

  @override
  Future<Either<ResponseError, Movies>> call(int page) {
    return _repository.getPopularMovie(page).mapRight(
          (value) => Movies.fromResponse(value),
        );
  }
}
