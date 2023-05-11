import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response_converter.dart';
import 'package:movie_mania/data/source/network/service/movie_service.dart';
import 'package:movie_mania/data/source/network/service/search_service.dart';
import 'package:movie_mania/data/source/network/service/tv_service.dart';

class ChopperFactory {
  late final ChopperClient client;

  ChopperFactory._create(this.client) {
    // Add any additional setup code, e.g. build queries.
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static ChopperClient create() => ChopperClient(
        baseUrl: Uri.parse("https://api.themoviedb.org/3"),
        converter: ResponseConverter(),
        errorConverter: ResponseConverter(),
        interceptors: [
          (Request request) {
            request.parameters["api_key"] = "fbb9572d11b5458ac98f02b84f2bafc4";
            return request.copyWith(parameters: request.parameters);
          },
        ],
        services: [
          MovieService.create(),
          TvService.create(),
          SearchService.create(),
        ],
      );
}
