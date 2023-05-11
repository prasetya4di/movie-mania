import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  final String title;

  const MovieTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white));
  }
}
