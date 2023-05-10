import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movies.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_now_playing_movies.dart';

class FetchNowPlayingMoviesImpl implements FetchNowPlayingMovies {
  final MovieRepository _repository;

  FetchNowPlayingMoviesImpl(this._repository);

  @override
  Future<Either<ResponseError, Movies>> call(int page) => _repository
      .getNowPlaying(page)
      .mapRight((value) => Movies.fromResponse(value));
}
