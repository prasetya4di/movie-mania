import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/movie_item_view_data_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/widgets/movie_item_view.dart';
import 'package:movie_mania/presenter/widgets/space_vertical.dart';

class DetailRecommendations extends StatelessWidget {
  final List<MovieItemViewDataModel> recommendation;

  const DetailRecommendations({super.key, required this.recommendation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SpaceVertical(
          size: 16,
        ),
        Text(
          "Recommendations",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(
          thickness: 2,
          color: Colors.white,
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendation.length,
              itemBuilder: (ctx, index) {
                return MovieItemView(movieItem: recommendation[index]);
              }),
        )
      ],
    );
  }
}
