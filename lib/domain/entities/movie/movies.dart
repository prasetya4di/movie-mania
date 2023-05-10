import 'package:movie_mania/domain/entities/movie/movie.dart';

class Movies {
  final int totalPages;
  final List<Movie> data;

  Movies(this.totalPages, this.data);
}
