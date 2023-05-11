import 'package:movie_mania/domain/entities/movie/movie_item.dart';
import 'package:movie_mania/domain/entities/tv/tv_item.dart';

class ItemViewDataModel {
  final int id;
  final String posterPath;
  final String title;
  final double rating;

  ItemViewDataModel(this.id, this.posterPath, this.title, this.rating);

  factory ItemViewDataModel.fromMovieItem(MovieItem item) => ItemViewDataModel(
        item.id,
        "https://image.tmdb.org/t/p/w342/${item.posterPath}",
        item.title,
        item.voteAverage,
      );

  factory ItemViewDataModel.fromTvItem(TvItem item) => ItemViewDataModel(
        item.id,
        "https://image.tmdb.org/t/p/w342/${item.posterPath}",
        item.name,
        item.voteAverage,
      );
}
