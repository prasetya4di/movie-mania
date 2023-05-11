import 'package:movie_mania/domain/usecases/fetch_now_playing_movies.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';

class NowPlayingMovieViewModel
    extends BaseListViewModel<MovieItemViewDataModel> {
  final FetchNowPlayingMovies _fetchNowPlayingMovies;

  NowPlayingMovieViewModel(this._fetchNowPlayingMovies);

  @override
  fetchData() {
    _fetchNowPlayingMovies(page).then((value) {
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
