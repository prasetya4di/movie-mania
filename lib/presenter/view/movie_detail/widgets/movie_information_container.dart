import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_container_indicator.dart';
import 'package:movie_mania/presenter/widgets/space_vertical.dart';

class MovieInformationContainer extends StatelessWidget {
  final Widget child;

  const MovieInformationContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          SpaceVertical(size: MediaQuery.of(context).size.height / 2),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
            child: Column(
              children: [
                const DetailContainerIndicator(),
                child,
              ],
            ),
          )
        ],
      ),
    );
  }
}
