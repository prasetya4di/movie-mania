import 'package:movie_mania/data/source/network/response/tv/tvs_response.dart';
import 'package:movie_mania/domain/entities/tv/tv_item.dart';

class Tvs {
  final int totalPages;
  final List<TvItem> data;

  Tvs(this.totalPages, this.data);

  factory Tvs.fromTvResponse(TvsResponse response) => Tvs(
        response.totalPages,
        response.results.map((e) => TvItem.fromResponse(e)).toList(),
      );
}
