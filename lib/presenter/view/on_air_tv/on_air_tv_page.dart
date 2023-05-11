import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/on_air_tv/on_air_tv_view_model.dart';
import 'package:movie_mania/presenter/view/on_air_tv/widgets/on_air_tv_list_view.dart';
import 'package:provider/provider.dart';

class OnAirTvPage extends StatefulWidget {
  const OnAirTvPage({super.key});

  @override
  State<OnAirTvPage> createState() => _OnAirTvPage();
}

class _OnAirTvPage extends State<OnAirTvPage> {
  final _scrollController = ScrollController();
  late final OnAirTvViewModel viewModel;

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
    return OnAirTvListView(_scrollController);
  }
}
