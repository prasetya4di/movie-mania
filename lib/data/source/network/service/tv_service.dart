import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';

part 'tv_service.chopper.dart';

@ChopperApi(baseUrl: "/tv")
abstract class TvService extends ChopperService {
  static TvService create([ChopperClient? client]) => _$TvService(client);

  @Get(path: "/on_the_air")
  Future<Response<TvsResponse>> getTvOnTheAir();

  @Get(path: "/popular")
  Future<Response<TvsResponse>> getPopularTv();

  @Get(path: "/{tv_id}/recommendations")
  Future<Response<TvsResponse>> getTvRecommendation(@Path("tv_id") int tvId);

  @Get(path: "/{tv_id}")
  Future<Response<TvDetailResponse>> getDetail(@Path("tv_id") int tvId);
}
