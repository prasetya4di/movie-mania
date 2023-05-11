import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';

part 'search_service.chopper.dart';

@ChopperApi(baseUrl: "/search")
abstract class SearchService extends ChopperService {
  static SearchService create([ChopperClient? client]) =>
      _$SearchService(client);

  @Get(path: "/movie")
  Future<Response<MoviesResponse>> searchMovie(
    @Query() int page,
    @Query() String query,
  );

  @Get(path: "/tv")
  Future<Response<TvsResponse>> searchTv(
    @Query() int page,
    @Query() String query,
  );
}
