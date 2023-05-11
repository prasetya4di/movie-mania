import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/widgets/space_horizontal.dart';

class MovieRating extends StatelessWidget {
  final double rating;

  const MovieRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SpaceHorizontal(size: 2),
        Text(rating.toStringAsFixed(1))
      ],
    );
  }
}
