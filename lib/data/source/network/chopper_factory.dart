import 'package:chopper/chopper.dart';
import 'package:movie_mania/data/source/network/response_converter.dart';

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
        services: [],
      );
}
