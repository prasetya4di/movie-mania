import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_list_view.dart';
import 'package:provider/provider.dart';

class PopularMoviePage extends StatefulWidget {
  const PopularMoviePage({super.key});

  @override
  State<PopularMoviePage> createState() => _PopularMoviePage();
}

class _PopularMoviePage extends State<PopularMoviePage> {
  final _scrollController = ScrollController();
  late final PopularMovieViewModel viewModel;

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
    return ItemListView<PopularMovieViewModel>(_scrollController);
  }
}
