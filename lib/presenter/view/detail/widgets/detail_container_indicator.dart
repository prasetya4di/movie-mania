import 'package:flutter/material.dart';

class DetailContainerIndicator extends StatelessWidget {
  const DetailContainerIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 40,
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  }
}
