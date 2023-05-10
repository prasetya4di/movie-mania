import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/movie/movie_search_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tv_search_response.dart';

part 'search_service.chopper.dart';

@ChopperApi(baseUrl: "/search")
abstract class SearchService extends ChopperService {
  static SearchService create([ChopperClient? client]) =>
      _$SearchService(client);

  @Get(path: "/movie")
  Future<Response<MovieSearchResponse>> searchMovie(@Query() String key);

  @Get(path: "/tv")
  Future<Response<TvSearchResponse>> searchTv(@Query() String key);
}
