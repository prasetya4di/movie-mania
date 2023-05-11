import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_back_button.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_backdrop.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_genres.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_information_container.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_overview.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_rating.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_recommendations.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_runtime.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_shimmer_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_title.dart';
import 'package:provider/provider.dart';

class DetailView extends BaseStatelessView<DetailViewModel> {
  const DetailView({super.key});

  @override
  Widget createView(BuildContext context) {
    return Consumer<DetailViewModel>(
      builder: (ctx, data, _) {
        if (data.detail == null) {
          return const SizedBox();
        } else {
          final movie = data.detail!;
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              DetailBackdrop(backdropPath: movie.posterPath),
              DetailInformationContainer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailTitle(title: movie.title),
                      DetailRating(rating: movie.rating),
                      DetailGenres(genres: movie.genres),
                      DetailRunTime(runtime: movie.runtime),
                      DetailOverview(overview: movie.overview),
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
    context.read<DetailViewModel>().retry();
  }

  @override
  bool get checkIsLoading => true;
}
