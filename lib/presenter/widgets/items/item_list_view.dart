import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';
import 'package:movie_mania/presenter/widgets/circular_progress.dart';
import 'package:movie_mania/presenter/widgets/end_of_data_text.dart';
import 'package:movie_mania/presenter/widgets/items/items_shimmer_view.dart';
import 'package:movie_mania/presenter/widgets/items/items_view.dart';
import 'package:provider/provider.dart';

class ItemListView<V extends BaseListViewModel<ItemViewDataModel>>
    extends BaseStatelessView<V> {
  final ScrollController _scrollController;

  const ItemListView(this._scrollController, {super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<V>(builder: (ctx, data, _) {
      return SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ItemsView(
              movies: data.listData,
            ),
            if (data.isLoadMore) const CircularProgress(),
            if (data.page != 1 && data.page == data.totalPage)
              const EndOfDataText(),
          ],
        ),
      );
    });
  }

  @override
  Widget loadingView(BuildContext context) {
    return const ItemsShimmerView();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<V>().fetchFirstPage();
  }
}
