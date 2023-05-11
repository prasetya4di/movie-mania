import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_detail_view.dart';
import 'package:provider/provider.dart';

class MovieDetailPage extends StatefulWidget {
  final int movieId;

  const MovieDetailPage({super.key, required this.movieId});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late MovieDetailViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read();
    _viewModel.fetchAllData(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MovieDetailView());
  }
}
