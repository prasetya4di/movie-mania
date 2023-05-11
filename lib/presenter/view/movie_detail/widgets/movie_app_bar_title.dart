import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:provider/provider.dart';

class MovieAppBarTitle extends StatelessWidget {
  const MovieAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.select((MovieDetailViewModel m) => m.movie?.title ?? ""),
    );
  }
}
