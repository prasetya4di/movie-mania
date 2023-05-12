import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ItemShimmerView extends StatelessWidget {
  const ItemShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: AspectRatio(
        aspectRatio: 17 / 25,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),
      ),
    );
  }
}
