import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/popular_tv/popular_tv_view_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_list_view.dart';
import 'package:provider/provider.dart';

class PopularTvPage extends StatefulWidget {
  const PopularTvPage({super.key});

  @override
  State<PopularTvPage> createState() => _PopularMoviePage();
}

class _PopularMoviePage extends State<PopularTvPage> {
  final _scrollController = ScrollController();
  late final PopularTvViewModel viewModel;

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
    return ItemListView<PopularTvViewModel>(_scrollController);
  }
}