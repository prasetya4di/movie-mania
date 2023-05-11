import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_mania/generated/assets.dart';
import 'package:movie_mania/presenter/widgets/space_vertical.dart';

class ErrorPage extends StatelessWidget {
  final String message;
  final Function() retry;

  const ErrorPage({super.key, required this.message, required this.retry});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.imagesIllustrationError),
          const SpaceVertical(),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: retry,
            child: const Text("Retry"),
          ),
        ],
      ),
    );
  }
}
