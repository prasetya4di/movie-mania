import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/movie/movie_page.dart';
import 'package:movie_mania/presenter/view/movie_detail/movie_detail_page.dart';

class Routes {
  static const home = "/home";
  static const detail = "/detail";
}

Route<dynamic>? generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.home:
      return MaterialPageRoute(builder: (_) => const MoviePage());
    case Routes.detail:
      final args = routeSettings.arguments as int;

      return MaterialPageRoute(
          builder: (ctx) => MovieDetailPage(movieId: args));
  }
  return null;
}
