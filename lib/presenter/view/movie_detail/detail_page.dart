import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie_detail/detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_view.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  final int id;

  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read();
    _viewModel.fetchAllData(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DetailView());
  }
}
