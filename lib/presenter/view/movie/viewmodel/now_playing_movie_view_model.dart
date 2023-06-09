import 'package:movie_mania/domain/usecases/fetch_now_playing_movies.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';

class NowPlayingMovieViewModel extends BaseListViewModel<ItemViewDataModel> {
  final FetchNowPlayingMovies _fetchNowPlayingMovies;

  NowPlayingMovieViewModel(this._fetchNowPlayingMovies);

  @override
  fetchData() async {
    _fetchNowPlayingMovies(page).then((value) {
      value.fold(
        (failure) => setResponseError(failure),
        (movies) {
          totalPage = movies.totalPages;
          listData = movies.data.map((e) => ItemViewDataModel.fromMovieItem(e));
        },
      );
    }).then((value) {
      notifyListeners();
    }).catchError((err) {
      setThrowable(err);
    });
  }
}
