import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_overlay_view.dart';

class MoviePosterView extends StatelessWidget {
  final String posterPath;

  const MoviePosterView({super.key, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: posterPath,
        imageBuilder: (context, provider) {
          return Stack(
            children: [
              Image(image: provider),
              const MovieOverlayView(),
            ],
          );
        },
        progressIndicatorBuilder: (ctx, _, progress) {
          return const SizedBox(height: 280);
        },
      ),
    );
  }
}