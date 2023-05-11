import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePosterView extends StatelessWidget {
  final String posterPath;

  const MoviePosterView({super.key, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
      child: CachedNetworkImage(
        imageUrl: posterPath,
        progressIndicatorBuilder: (ctx, _, progress) {
          return const SizedBox(height: 180);
        },
      ),
    );
  }
}
