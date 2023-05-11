import 'package:flutter/material.dart';

class EndOfDataText extends StatelessWidget {
  const EndOfDataText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Divider(color: Colors.grey),
          Text(
            "You are at the end of the page, try to search another keyword or come back later :)",
            style: TextStyle(color: Colors.grey.shade700),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
