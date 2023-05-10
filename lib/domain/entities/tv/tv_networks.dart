import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvNetworks {
  final String name;
  final int id;
  dynamic logoPath;
  final String originCountry;

  TvNetworks(this.name, this.id, this.originCountry);

  factory TvNetworks.fromResponse(TvDetailResponseNetworks res) => TvNetworks(
        res.name,
        res.id,
        res.originCountry,
      );
}
