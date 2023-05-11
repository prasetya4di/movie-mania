import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/widgets/items/item_overlay_view.dart';
import 'package:movie_mania/presenter/widgets/items/item_shimmer_view.dart';

class ItemPosterView extends StatelessWidget {
  final String posterPath;

  const ItemPosterView({super.key, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: posterPath,
        cacheKey: posterPath,
        imageBuilder: (context, provider) {
          return Stack(
            children: [
              Image(image: provider),
              const ItemOverlayView(),
            ],
          );
        },
        progressIndicatorBuilder: (ctx, _, progress) {
          return const ItemShimmerView();
        },
      ),
    );
  }
}
