import 'package:flutter/material.dart';

class MovieOverview extends StatelessWidget {
  final String overview;

  const MovieOverview({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Overview",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(
          color: Colors.white,
          thickness: 2,
        ),
        Text(overview)
      ],
    );
  }
}
