import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_popular_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_search_response.dart';
import 'package:movie_mania/data/source/network/response/movie/now_playing_response.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entity/movie/movie.dart';

abstract class MovieRepository {
  Future<Either<ResponseError, NowPlayingResponse>> getNowPlaying();

  Future<Either<ResponseError, MoviePopularResponse>> getPopularMovie();

  Future<Either<ResponseError, MovieRecommendationResponse>>
      getMovieRecommendation(int id);

  Future<Either<ResponseError, Movie>> getDetail(int id);

  Future<Either<ResponseError, MovieSearchResponse>> searchMovie(String key);
}
