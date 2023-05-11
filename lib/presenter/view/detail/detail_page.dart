import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/source.dart';
import 'package:movie_mania/presenter/view/detail/detail_view_model.dart';
import 'package:movie_mania/presenter/view/detail/model/detail_page_arguments.dart';
import 'package:movie_mania/presenter/view/detail/widgets/detail_view.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  final DetailPageArguments arguments;

  const DetailPage({super.key, required this.arguments});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read();
    switch (widget.arguments.source) {
      case Source.movie:
        _viewModel.fetchMovieData(widget.arguments.id);
        break;
      case Source.tv:
        _viewModel.fetchTvData(widget.arguments.id);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DetailView());
  }
}
