import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/on_air_tv/on_air_tv_view_model.dart';
import 'package:movie_mania/presenter/widgets/circular_progress.dart';
import 'package:movie_mania/presenter/widgets/end_of_data_text.dart';
import 'package:movie_mania/presenter/widgets/items/items_shimmer_view.dart';
import 'package:movie_mania/presenter/widgets/items/items_view.dart';
import 'package:provider/provider.dart';

class OnAirTvListView extends BaseStatelessView<OnAirTvViewModel> {
  final ScrollController _scrollController;

  const OnAirTvListView(this._scrollController, {super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<OnAirTvViewModel>(builder: (ctx, data, _) {
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
    return const ItemShimmerView();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<OnAirTvViewModel>().fetchFirstPage();
  }

  @override
  bool get checkIsLoading => true;
}
