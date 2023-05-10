import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvGenres {
  final int id;
  final String name;

  TvGenres(this.id, this.name);

  factory TvGenres.fromResponse(TvDetailResponseGenres res) => TvGenres(
        res.id,
        res.name,
      );
}
