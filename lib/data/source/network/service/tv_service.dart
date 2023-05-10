import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_on_the_air_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_popular_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_recommendation_response.dart';
import 'package:movie_mania/domain/entities/tv/tv.dart';

part 'tv_service.chopper.dart';

@ChopperApi(baseUrl: "/tv")
abstract class TvService extends ChopperService {
  static TvService create([ChopperClient? client]) => _$TvService(client);

  @Get(path: "/on_the_air")
  Future<Response<TvOnTheAirResponse>> getTvOnTheAir();

  @Get(path: "/popular")
  Future<Response<TvPopularResponse>> getPopularTv();

  @Get(path: "/{tv_id}/recommendations")
  Future<Response<TvRecommendationResponse>> getTvRecommendation(
      @Path("tv_id") int tvId);

  @Get(path: "/{tv_id}")
  Future<Response<Tv>> getDetail(@Path("tv_id") int tvId);
}
