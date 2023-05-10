import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';

class MovieSpokenLanguages {
  final String englishName;
  final String iso6391;
  final String name;

  MovieSpokenLanguages(this.englishName, this.iso6391, this.name);

  factory MovieSpokenLanguages.fromResponse(
          MovieDetailResponseSpokenLanguages res) =>
      MovieSpokenLanguages(
        res.englishName,
        res.iso6391,
        res.name,
      );
}
