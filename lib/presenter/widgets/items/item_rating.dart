import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/widgets/space_horizontal.dart';

class ItemRating extends StatelessWidget {
  final double rating;

  const ItemRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SpaceHorizontal(size: 2),
        Text(
          rating.toStringAsFixed(1),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
