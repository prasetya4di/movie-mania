import 'dart:collection';

import 'package:movie_mania/domain/usecases/fetch_popular_movies.dart';
import 'package:movie_mania/presenter/base/base_view_model.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';

class PopularMovieViewModel extends BaseViewModel {
  final FetchPopularMovies _fetchPopularMovies;

  PopularMovieViewModel(this._fetchPopularMovies);

  int _currentPage = 1;
  int _totalPage = 1;
  final List<MovieItemViewDataModel> _popularMovies = [];

  UnmodifiableListView<MovieItemViewDataModel> get popularMovies =>
      UnmodifiableListView(_popularMovies);

  fetchPopularMovies() {
    super.setLoading(true);
    _fetchPopularMovies(_currentPage).then((value) {
      value.fold(
        (failure) => super.setResponseError(failure),
        (movies) {
          _totalPage = movies.totalPages;
          _popularMovies.clear();
          _popularMovies.addAll(
              movies.data.map((e) => MovieItemViewDataModel.fromMovieItem(e)));
        },
      );
    }).then((value) {
      notifyListeners();
    });
  }

  fetchMorePopularMovies() {
    if (_currentPage == _totalPage) return;
    _currentPage++;

    fetchPopularMovies();
  }
}
