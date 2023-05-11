import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieItemShimmerView extends StatelessWidget {
  const MovieItemShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6))),
      ),
    );
  }
}