import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/model/item_view_data_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_poster_view.dart';
import 'package:movie_mania/presenter/widgets/items/item_rating.dart';

class ItemView extends StatelessWidget {
  final ItemViewDataModel movieItem;
  final Function() onTap;

  const ItemView({super.key, required this.movieItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Stack(
          children: [
            ItemPosterView(posterPath: movieItem.posterPath),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: ItemRating(rating: movieItem.rating),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
