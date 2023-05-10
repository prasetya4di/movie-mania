import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvProductionCountries {
  final String iso31661;
  final String name;

  TvProductionCountries(this.iso31661, this.name);

  factory TvProductionCountries.fromResponse(
          TvDetailResponseProductionCountries res) =>
      TvProductionCountries(res.iso31661, res.name);
}
