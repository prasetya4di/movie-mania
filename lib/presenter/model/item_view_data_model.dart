import 'package:movie_mania/domain/entities/movie/movie_item.dart';
import 'package:movie_mania/domain/entities/tv/tv_item.dart';
import 'package:movie_mania/presenter/model/source.dart';

class ItemViewDataModel {
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final Source source;

  ItemViewDataModel(
      this.id, this.posterPath, this.title, this.rating, this.source);

  factory ItemViewDataModel.fromMovieItem(MovieItem item) => ItemViewDataModel(
        item.id,
        item.posterPath.isEmpty
            ? ""
            : "https://image.tmdb.org/t/p/w342/${item.posterPath}",
        item.title,
        item.voteAverage,
        Source.movie,
      );

  factory ItemViewDataModel.fromTvItem(TvItem item) => ItemViewDataModel(
    item.id,
        item.posterPath.isEmpty
            ? ""
            : "https://image.tmdb.org/t/p/w342/${item.posterPath}",
        item.name,
        item.voteAverage,
        Source.tv,
      );
}
