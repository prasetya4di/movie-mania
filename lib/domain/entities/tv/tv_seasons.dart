import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvSeasons {
  final String airDate;
  final int episodeCount;
  final int id;
  final String name;
  final String overview;
  dynamic posterPath;
  final int seasonNumber;

  TvSeasons(
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.seasonNumber,
  );

  factory TvSeasons.fromResponse(TvDetailResponseSeasons res) => TvSeasons(
        res.airDate,
        res.episodeCount,
        res.id,
        res.name,
        res.overview,
        res.seasonNumber,
      );
}
