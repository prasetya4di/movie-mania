import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_list_view_model.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_list_view.dart';
import 'package:provider/provider.dart';

class ItemPage<V extends BaseListViewModel<ItemViewDataModel>>
    extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState<V>();
}

class _ItemPageState<V extends BaseListViewModel<ItemViewDataModel>>
    extends State<ItemPage> with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();
  late final V viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = context.read();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        viewModel.fetchNextPage();
      }
    });
    viewModel.fetchFirstPage();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ItemListView<V>(_scrollController);
  }

  @override
  bool get wantKeepAlive => true;
}
