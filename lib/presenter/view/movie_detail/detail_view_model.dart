import 'dart:collection';

import 'package:movie_mania/domain/usecases/fetch_movie_detail.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_recommendations.dart';
import 'package:movie_mania/presenter/base/base_view_model.dart';
import 'package:movie_mania/presenter/model/detail_view_data_model.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';

class DetailViewModel extends BaseViewModel {
  final FetchMovieDetail _fetchMovieDetail;
  final FetchMovieRecommendations _fetchMovieRecommendations;

  DetailViewModel(this._fetchMovieDetail, this._fetchMovieRecommendations);

  final List<ItemViewDataModel> _recommendations = [];
  DetailViewDataModel? _detail;
  int _id = 0;

  UnmodifiableListView<ItemViewDataModel> get recommendations =>
      UnmodifiableListView(_recommendations);

  DetailViewDataModel? get detail => _detail;

  retry() {
    fetchAllData(_id);
  }

  fetchAllData(int movieId) {
    if (loading) return;
    startLoading();
    _detail = null;
    _recommendations.clear();
    _id = movieId;
    _fetchMovieDetail(movieId)
        .then((value) {
          value.fold(
            (failure) => setResponseError(failure),
            (movie) => _detail = DetailViewDataModel.fromMovie(movie),
          );
        })
        .then((_) => _fetchMovieRecommendations(movieId, 1))
        .then((value) {
          value.fold(
            (failure) => setResponseError(failure),
            (movies) {
              _recommendations.clear();
              _recommendations.addAll(
                  movies.data.map((e) => ItemViewDataModel.fromMovieItem(e)));
            },
          );
        })
        .then((value) {
          finishLoading();
          notifyListeners();
        });
  }
}
