import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/data/source/network/service/movie_service.dart';
import 'package:movie_mania/data/source/network/service/search_service.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieService _movieService;
  final SearchService _searchService;

  MovieRepositoryImpl(this._movieService, this._searchService);

  @override
  Future<Either<ResponseError, MovieDetailResponse>> getDetail(int id) async {
    final response = await _movieService.getDetail(id);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MoviesResponse>> getMovieRecommendation(
      int id, int page) async {
    final response = await _movieService.getMovieRecommendation(id, page);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MoviesResponse>> getNowPlaying(int page) async {
    final response = await _movieService.getNowPlaying(page);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MoviesResponse>> getPopularMovie(
      int page) async {
    final response = await _movieService.getPopularMovie(page);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }

  @override
  Future<Either<ResponseError, MoviesResponse>> searchMovie(
      int page, String key) async {
    final response = await _searchService.searchMovie(page, key);
    return Either.condLazy(response.isSuccessful,
        () => response.error as ResponseError, () => response.body!);
  }
}
