import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';

class MovieProductionCountries {
  final String iso31661;
  final String name;

  MovieProductionCountries(this.iso31661, this.name);

  factory MovieProductionCountries.fromResponse(
          MovieDetailResponseProductionCountries res) =>
      MovieProductionCountries(
        res.iso31661,
        res.name,
      );
}
