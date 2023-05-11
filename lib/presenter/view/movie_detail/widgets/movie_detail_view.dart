import 'package:flutter/material.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_back_button.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_genres.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_rating.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_recommendations.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_runtime.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_shimmer_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_backdrop.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_information_container.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_overview.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_title.dart';
import 'package:provider/provider.dart';

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
              MovieInformationContainer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieTitle(title: movie.title),
                      DetailRating(rating: movie.voteAverage),
                      DetailGenres(genres: movie.genres),
                      DetailRunTime(runtime: movie.runtime),
                      MovieOverview(overview: movie.overview),
                      if (data.recommendations.isNotEmpty)
                        DetailRecommendations(
                            recommendation: data.recommendations)
                    ],
                  ),
                ),
              ),
              const DetailBackButton(),
            ],
          );
        }
      },
    );
  }

  @override
  Widget loadingView(BuildContext context) {
    return const DetailShimmerView();
  }

  @override
  void pageErrorRetry(BuildContext context) {
    context.read<MovieDetailViewModel>().retry();
  }

  @override
  bool get checkIsLoading => true;
}
