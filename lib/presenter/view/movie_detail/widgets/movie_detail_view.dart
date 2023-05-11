import 'package:flutter/material.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_back_button.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_genres.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_backdrop.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_information_container.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_overview.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_title.dart';
import 'package:movie_mania/presenter/widgets/circular_progress.dart';
import 'package:provider/provider.dart';

import 'detail_container_indicator.dart';

class MovieDetailView extends BaseStatelessView<MovieDetailViewModel> {
  const MovieDetailView({super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<MovieDetailViewModel>(
      builder: (ctx, data, _) {
        if (data.movie == null) {
          return const SizedBox();
        } else {
          Movie movie = data.movie!;
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              MovieBackdrop(backdropPath: movie.posterPath),
              const DetailBackButton(),
              MovieInformationContainer(
                child: Column(
                  children: [
                    const DetailContainerIndicator(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieTitle(title: movie.title),
                          DetailGenres(genres: movie.genres),
                          MovieOverview(overview: movie.overview)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        }
      },
    );
  }

  @override
  Widget loadingView(BuildContext context) {
    return const CircularProgress();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<MovieDetailViewModel>().retry();
  }
}
