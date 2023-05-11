import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailBackdrop extends StatelessWidget {
  final String backdropPath;

  const DetailBackdrop({super.key, required this.backdropPath});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height,
      imageUrl: backdropPath,
      cacheKey: backdropPath,
      progressIndicatorBuilder: (ctx, _, progress) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade500,
          highlightColor: Colors.grey.shade300,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
