import 'dart:collection';

import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_detail.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_recommendations.dart';
import 'package:movie_mania/presenter/base/base_view_model.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';

class MovieDetailViewModel extends BaseViewModel {
  final FetchMovieDetail _fetchMovieDetail;
  final FetchMovieRecommendations _fetchMovieRecommendations;

  MovieDetailViewModel(this._fetchMovieDetail, this._fetchMovieRecommendations);

  final List<MovieItemViewDataModel> _recommendations = [];
  Movie? _movie;

  UnmodifiableListView<MovieItemViewDataModel> get recommendations =>
      UnmodifiableListView(_recommendations);

  Movie? get movie => _movie;

  fetchAllData(int movieId) {
    if (loading) return;
    startLoading();
    _fetchMovieDetail(movieId)
        .then((value) {
          value.fold(
            (failure) => setResponseError(failure),
            (movie) => _movie = movie,
          );
        })
        .then((_) => _fetchMovieRecommendations(movieId, 0))
        .then((value) {
          value.fold(
            (failure) => setResponseError(failure),
            (movies) {
              _recommendations.clear();
              _recommendations.addAll(movies.data
                  .map((e) => MovieItemViewDataModel.fromMovieItem(e)));
            },
          );
        })
        .then((value) {
          finishLoading();
          notifyListeners();
        });
  }
}
