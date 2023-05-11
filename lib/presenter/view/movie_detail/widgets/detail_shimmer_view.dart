import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailShimmerView extends StatelessWidget {
  const DetailShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade500,
      highlightColor: Colors.grey.shade300,
      child: Column(
        children: [
          Container(
            height: 450,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _placeholder(MediaQuery.of(context).size.width, 18),
                _placeholder(MediaQuery.of(context).size.width / 2, 18),
                _placeholder(MediaQuery.of(context).size.width / 1.5, 18),
                _placeholder(MediaQuery.of(context).size.width / 1.8, 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _placeholder(double width, double height) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
