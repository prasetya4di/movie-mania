import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/detail/detail_page.dart';
import 'package:movie_mania/presenter/view/detail/model/detail_page_arguments.dart';
import 'package:movie_mania/presenter/view/home/home_page.dart';

class Routes {
  static const home = "/home";
  static const detail = "/detail";
}

Route<dynamic>? generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Routes.home:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case Routes.detail:
      final args = routeSettings.arguments as DetailPageArguments;

      return MaterialPageRoute(builder: (ctx) => DetailPage(arguments: args));
  }
  return null;
}
