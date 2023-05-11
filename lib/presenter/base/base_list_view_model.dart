import 'dart:collection';

import 'package:movie_mania/presenter/base/base_view_model.dart';

abstract class BaseListViewModel<T> extends BaseViewModel {
  int page = 1;
  int totalPage = 1;
  bool isLoadMore = false;

  final List<T> _listData = [];

  set listData(Iterable<T> data) {
    _listData.addAll(data);
  }

  UnmodifiableListView<T> get listData => UnmodifiableListView(_listData);

  fetchFirstPage() async {
    if (super.loading) return;
    super.startLoading();
    page = 1;
    _listData.clear();

    await fetchData();
    super.finishLoading();
  }

  fetchData();

  fetchNextPage() async {
    if (totalPage == page) return;
    if (super.loading) return;
    if (isLoadMore) return;
    isLoadMore = true;
    notifyListeners();
    page++;

    await fetchData();
    isLoadMore = false;
  }
}
