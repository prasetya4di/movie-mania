import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';

abstract class MovieRepository {
  Future<Either<ResponseError, MoviesResponse>> getNowPlaying();

  Future<Either<ResponseError, MoviesResponse>> getPopularMovie();

  Future<Either<ResponseError, MoviesResponse>> getMovieRecommendation(int id);

  Future<Either<ResponseError, MovieDetailResponse>> getDetail(int id);

  Future<Either<ResponseError, MoviesResponse>> searchMovie(String key);
}
