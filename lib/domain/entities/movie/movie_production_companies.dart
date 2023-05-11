import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';

class MovieProductionCompanies {
  final int id;
  final String? logoPath;
  final String name;
  final String originCountry;

  MovieProductionCompanies(
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  );

  factory MovieProductionCompanies.fromResponse(
          MovieDetailResponseProductionCompanies res) =>
      MovieProductionCompanies(
        res.id,
        res.logoPath,
        res.name,
        res.originCountry,
      );
}
