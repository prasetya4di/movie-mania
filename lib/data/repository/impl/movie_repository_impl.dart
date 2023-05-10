import 'package:either_dart/either.dart';
import 'package:movie_mania/data/entity/movie/movie.dart';
import 'package:movie_mania/data/repository/movie_repository.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_popular_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_search_response.dart';
import 'package:movie_mania/data/source/network/response/movie/now_playing_response.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/service/movie_service.dart';
import 'package:movie_mania/data/source/network/service/search_service.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieService _movieService;
  final SearchService _searchService;

  MovieRepositoryImpl(this._movieService, this._searchService);

  @override
  Future<Either<ResponseError, Movie>> getDetail(int id) async {
    final response = await _movieService.getDetail(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MovieRecommendationResponse>>
      getMovieRecommendation(int id) async {
    final response = await _movieService.getMovieRecommendation(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, NowPlayingResponse>> getNowPlaying() async {
    final response = await _movieService.getNowPlaying();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MoviePopularResponse>> getPopularMovie() async {
    final response = await _movieService.getPopularMovie();
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MovieSearchResponse>> searchMovie(
      String key) async {
    final response = await _searchService.searchMovie(key);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }
}
