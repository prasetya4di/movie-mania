import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/view/on_air_tv/on_air_tv_page.dart';
import 'package:movie_mania/presenter/view/popular_tv/popular_tv_page.dart';
import 'package:movie_mania/presenter/view/tv/viewmodel/on_air_tv_view_model.dart';
import 'package:movie_mania/presenter/view/tv/viewmodel/popular_tv_view_model.dart';
import 'package:movie_mania/presenter/widgets/items/item_page.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movie Mania"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "On Air"),
              Tab(text: "Popular"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ItemPage<OnAirTvViewModel>(),
            ItemPage<PopularTvViewModel>(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
