import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';

class MovieGenres {
  final int id;
  final String name;

  MovieGenres(this.id, this.name);

  factory MovieGenres.fromResponse(MovieDetailResponseGenres res) =>
      MovieGenres(
        res.id,
        res.name,
      );
}
