import 'package:flutter/material.dart';
import 'package:movie_mania/domain/entities/movie/movie.dart';
import 'package:movie_mania/presenter/base/base_stateless_view.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/detail_back_button.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_backdrop.dart';
import 'package:movie_mania/presenter/view/movie_detail/widgets/movie_information_container.dart';
import 'package:movie_mania/presenter/widgets/circular_progress.dart';
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
              const DetailBackButton(),
              MovieInformationContainer(
                child: Column(
                  children: [DetailContainerIndicator()],
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
