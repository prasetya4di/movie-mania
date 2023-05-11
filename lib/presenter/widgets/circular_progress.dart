import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Theme.of(context).platform == TargetPlatform.iOS
            ? const CupertinoActivityIndicator()
            : const CircularProgressIndicator());
  }
}
