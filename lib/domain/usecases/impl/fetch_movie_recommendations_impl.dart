import 'package:either_dart/either.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/domain/entities/movie/movies.dart';
import 'package:movie_mania/domain/repository/movie_repository.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_recommendations.dart';

class FetchMovieRecommendationsImpl implements FetchMovieRecommendations {
  final MovieRepository _repository;

  FetchMovieRecommendationsImpl(this._repository);

  @override
  Future<Either<ResponseError, Movies>> call(int id, int page) => _repository
      .getMovieRecommendation(id, page)
      .mapRight((value) => Movies.fromResponse(value));
}
