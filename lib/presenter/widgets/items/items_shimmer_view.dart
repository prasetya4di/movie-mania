import 'package:flutter/material.dart';

class ItemShimmerView extends StatelessWidget {
  const ItemShimmerView({super.key});

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
          return const ItemShimmerView();
        });
  }
}
