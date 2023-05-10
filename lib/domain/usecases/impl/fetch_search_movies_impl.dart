import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movies.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_search_movies.dart';

class FetchSearchMoviesImpl implements FetchSearchMovies {
  final MovieRepository _repository;

  FetchSearchMoviesImpl(this._repository);

  @override
  Future<Either<ResponseError, Movies>> call(int page, String key) =>
      _repository
          .searchMovie(page, key)
          .mapRight((value) => Movies.fromResponse(value));
}
