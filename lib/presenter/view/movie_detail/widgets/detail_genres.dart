import 'package:flutter/material.dart';

class DetailGenres extends StatelessWidget {
  final String genres;

  const DetailGenres({super.key, required this.genres});

  @override
  Widget build(BuildContext context) {
    return Text(genres);
  }
}
