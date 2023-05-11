import 'package:chopper/chopper.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_detail.dart';
import 'package:movie_mania/domain/usecases/fetch_movie_recommendations.dart';
import 'package:movie_mania/domain/usecases/fetch_now_playing_movies.dart';
import 'package:movie_mania/domain/usecases/fetch_popular_movies.dart';
import 'package:movie_mania/domain/usecases/fetch_popular_tvs.dart';
import 'package:movie_mania/domain/usecases/fetch_search_movies.dart';
import 'package:movie_mania/domain/usecases/fetch_search_tvs.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_detail.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_on_the_air.dart';
import 'package:movie_mania/domain/usecases/fetch_tv_recommendations.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_movie_detail_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_movie_recommendations_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_now_playing_movies_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_popular_movies_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_popular_tvs_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_search_movies_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_search_tvs_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_tv_detail_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_tv_on_the_air_impl.dart';
import 'package:movie_mania/domain/usecases/impl/fetch_tv_recommendations_impl.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_view_model.dart';
import 'package:movie_mania/presenter/view/now_playing_movies/now_playing_movie_view_model.dart';
import 'package:movie_mania/presenter/view/on_air_tv/on_air_tv_view_model.dart';
import 'package:movie_mania/presenter/view/popular_movies/popular_movie_view_model.dart';
import 'package:movie_mania/presenter/view/popular_tv/popular_tv_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'data/repository/movie_repository_impl.dart';
import 'data/repository/tv_repository_impl.dart';
import 'data/source/network/chopper_factory.dart';
import 'data/source/network/service/movie_service.dart';
import 'data/source/network/service/search_service.dart';
import 'data/source/network/service/tv_service.dart';
import 'domain/repository/movie_repository.dart';
import 'domain/repository/tv_repository.dart';

List<SingleChildWidget> providers = [
  Provider<ChopperClient>(create: (_) => ChopperFactory.create()),
  Provider<MovieService>(
      create: (ctx) => ctx.read<ChopperClient>().getService()),
  Provider<TvService>(create: (ctx) => ctx.read<ChopperClient>().getService()),
  Provider<SearchService>(
      create: (ctx) => ctx.read<ChopperClient>().getService()),
  Provider<MovieRepository>(
      create: (ctx) => MovieRepositoryImpl(ctx.read(), ctx.read())),
  Provider<TvRepository>(
      create: (ctx) => TvRepositoryImpl(ctx.read(), ctx.read())),
  Provider<FetchMovieDetail>(create: (ctx) => FetchMovieDetailImpl(ctx.read())),
  Provider<FetchMovieRecommendations>(
      create: (ctx) => FetchMovieRecommendationsImpl(ctx.read())),
  Provider<FetchPopularMovies>(
      create: (ctx) => FetchPopularMoviesImpl(ctx.read())),
  Provider<FetchNowPlayingMovies>(
      create: (ctx) => FetchNowPlayingMoviesImpl(ctx.read())),
  Provider<FetchSearchMovies>(
      create: (ctx) => FetchSearchMoviesImpl(ctx.read())),
  Provider<FetchTvDetail>(create: (ctx) => FetchTvDetailImpl(ctx.read())),
  Provider<FetchTvRecommendations>(
      create: (ctx) => FetchTvRecommendationsImpl(ctx.read())),
  Provider<FetchPopularTvs>(create: (ctx) => FetchPopularTvsImpl(ctx.read())),
  Provider<FetchTvOnTheAir>(create: (ctx) => FetchTvOnTheAirImpl(ctx.read())),
  Provider<FetchSearchTvs>(create: (ctx) => FetchSearchTvsImpl(ctx.read())),
  ChangeNotifierProvider(create: (ctx) => PopularMovieViewModel(ctx.read())),
  ChangeNotifierProvider(create: (ctx) => NowPlayingMovieViewModel(ctx.read())),
  ChangeNotifierProvider(create: (ctx) => PopularTvViewModel(ctx.read())),
  ChangeNotifierProvider(create: (ctx) => OnAirTvViewModel(ctx.read())),
  ChangeNotifierProvider(
      create: (ctx) => MovieDetailViewModel(ctx.read(), ctx.read())),
];
