import 'package:movie_mania/domain/usecases/fetch_popular_tvs.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';

class PopularTvViewModel extends BaseListViewModel<ItemViewDataModel> {
  final FetchPopularTvs _fetchPopularTvs;

  PopularTvViewModel(this._fetchPopularTvs);

  @override
  fetchData() {
    _fetchPopularTvs(page).then((value) {
      value.fold(
        (failure) => setResponseError(failure),
        (movies) {
          totalPage = movies.totalPages;
          listData = movies.data.map((e) => ItemViewDataModel.fromTvItem(e));
        },
      );
    }).then((value) {
      notifyListeners();
    }).catchError((err) {
      setThrowable(err);
    });
  }
}
