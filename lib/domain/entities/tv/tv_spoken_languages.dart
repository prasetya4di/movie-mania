import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvSpokenLanguages {
  final String englishName;
  final String iso6391;
  final String name;

  TvSpokenLanguages(this.englishName, this.iso6391, this.name);

  factory TvSpokenLanguages.fromResponse(TvDetailResponseSpokenLanguages res) =>
      TvSpokenLanguages(
        res.englishName,
        res.iso6391,
        res.name,
      );
}
