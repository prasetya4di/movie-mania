import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';

part 'movie_service.chopper.dart';

@ChopperApi(baseUrl: "/movie")
abstract class MovieService extends ChopperService {
  static MovieService create([ChopperClient? client]) => _$MovieService(client);

  @Get(path: "/now_playing")
  Future<Response<MoviesResponse>> getNowPlaying(@Query() int page);

  @Get(path: "/popular")
  Future<Response<MoviesResponse>> getPopularMovie(@Query() int page);

  @Get(path: "/{movie_id}/recommendations")
  Future<Response<MoviesResponse>> getMovieRecommendation(
      @Path("movie_id") int movieId);

  @Get(path: "/{movie_id}")
  Future<Response<Movie>> getDetail(@Path("movie_id") int movieId);
}
