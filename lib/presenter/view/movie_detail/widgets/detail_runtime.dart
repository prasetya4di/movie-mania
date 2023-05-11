import 'package:flutter/cupertino.dart';

class DetailRunTime extends StatelessWidget {
  final String runtime;

  const DetailRunTime({super.key, required this.runtime});

  @override
  Widget build(BuildContext context) {
    return Text(runtime);
  }
}
