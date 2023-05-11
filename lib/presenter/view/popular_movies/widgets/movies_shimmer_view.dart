import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_item_shimmer_view.dart';

class MoviesShimmerView extends StatelessWidget {
  const MoviesShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.68,
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6),
        padding: const EdgeInsets.all(6),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const MovieItemShimmerView();
        });
  }
}
