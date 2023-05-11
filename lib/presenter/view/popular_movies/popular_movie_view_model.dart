import 'package:movie_mania/domain/usecases/fetch_popular_movies.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';

class PopularMovieViewModel extends BaseListViewModel<MovieItemViewDataModel> {
  final FetchPopularMovies _fetchPopularMoviesUseCase;

  PopularMovieViewModel(this._fetchPopularMoviesUseCase);

  @override
  fetchData() {
    _fetchPopularMoviesUseCase(page).then((value) {
      value.fold(
        (failure) => setResponseError(failure),
        (movies) {
          totalPage = movies.totalPages;
          listData =
              movies.data.map((e) => MovieItemViewDataModel.fromMovieItem(e));
        },
      );
    }).then((value) {
      notifyListeners();
    });
  }
}
