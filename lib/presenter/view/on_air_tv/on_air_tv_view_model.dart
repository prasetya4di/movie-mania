import 'package:movie_mania/domain/usecases/fetch_tv_on_the_air.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';

class OnAirTvViewModel extends BaseListViewModel<ItemViewDataModel> {
  final FetchTvOnTheAir _fetchTvOnTheAir;

  OnAirTvViewModel(this._fetchTvOnTheAir);

  @override
  fetchData() {
    _fetchTvOnTheAir(page).then((value) {
      value.fold(
        (failure) => setResponseError(failure),
        (movies) {
          totalPage = movies.totalPages;
          listData = movies.data.map((e) => ItemViewDataModel.fromTvItem(e));
        },
      );
    }).then((value) {
      notifyListeners();
    });
  }
}
