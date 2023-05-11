import 'dart:collection';

import 'package:movie_mania/domain/usecases/fetch_popular_movies.dart';
import 'package:movie_mania/presenter/base/base_view_model.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';

class PopularMovieViewModel extends BaseViewModel {
  final FetchPopularMovies _fetchPopularMoviesUseCase;

  PopularMovieViewModel(this._fetchPopularMoviesUseCase);

  int _currentPage = 1;
  int _totalPage = 1;
  bool _isLoadMore = false;
  final List<MovieItemViewDataModel> _popularMovies = [];

  UnmodifiableListView<MovieItemViewDataModel> get popularMovies =>
      UnmodifiableListView(_popularMovies);

  fetchInitPopularMovies() async {
    if (super.loading) return;
    print("di run");
    super.startLoading();
    _popularMovies.clear();

    await _fetchPopularMovies();
    super.finishLoading();
  }

  _fetchPopularMovies() {
    _fetchPopularMoviesUseCase(_currentPage).then((value) {
      value.fold(
        (failure) => super.setResponseError(failure),
        (movies) {
          _totalPage = movies.totalPages;
          _popularMovies.addAll(
              movies.data.map((e) => MovieItemViewDataModel.fromMovieItem(e)));
        },
      );
    }).then((value) {
      notifyListeners();
    });
  }

  fetchMorePopularMovies() async {
    if (_currentPage == _totalPage) return;
    if (super.loading) return;
    if (_isLoadMore) return;
    _isLoadMore = true;
    _currentPage++;
    print("di run load more");

    await _fetchPopularMovies();
    _isLoadMore = false;
  }
}
