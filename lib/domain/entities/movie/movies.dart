import 'package:movie_mania/data/source/network/response/movie/movies_response.dart';
import 'package:movie_mania/domain/entities/movie/movie_item.dart';

class Movies {
  final int totalPages;
  final List<MovieItem> data;

  Movies(this.totalPages, this.data);

  factory Movies.fromResponse(MoviesResponse response) => Movies(
        response.totalPages,
        response.results.map((e) => MovieItem.fromResponse(e)).toList(),
      );
}
