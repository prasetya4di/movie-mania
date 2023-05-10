import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_popular_response.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_recommendation_response.dart';
import 'package:movie_mania/data/source/network/response/movie/now_playing_response.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';

part 'movie_service.chopper.dart';

@ChopperApi(baseUrl: "/movie")
abstract class MovieService extends ChopperService {
  static MovieService create([ChopperClient? client]) => _$MovieService(client);

  @Get(path: "/now_playing")
  Future<Response<NowPlayingResponse>> getNowPlaying();

  @Get(path: "/popular")
  Future<Response<MoviePopularResponse>> getPopularMovie();

  @Get(path: "/{movie_id}/recommendations")
  Future<Response<MovieRecommendationResponse>> getMovieRecommendation(
      @Path("movie_id") int movieId);

  @Get(path: "/{movie_id}")
  Future<Response<Movie>> getDetail(@Path("movie_id") int movieId);
}
