import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';

class TvLastEpisodeToAir {
  final String airDate;
  final int episodeNumber;
  final int id;
  final String name;
  final String overview;
  final String productionCode;
  final int seasonNumber;
  dynamic stillPath;
  final int voteAverage;
  final int voteCount;

  TvLastEpisodeToAir(
      this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.voteAverage,
      this.voteCount);

  factory TvLastEpisodeToAir.fromResponse(
          TvDetailResponseLastEpisodeToAir res) =>
      TvLastEpisodeToAir(
        res.airDate,
        res.episodeNumber,
        res.id,
        res.name,
        res.overview,
        res.productionCode,
        res.seasonNumber,
        res.voteAverage,
        res.voteCount,
      );
}
