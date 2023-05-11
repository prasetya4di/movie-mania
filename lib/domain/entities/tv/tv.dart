import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';
import 'package:movie_mania/domain/entities/tv/tv_genres.dart';
import 'package:movie_mania/domain/entities/tv/tv_last_episode_to_air.dart';
import 'package:movie_mania/domain/entities/tv/tv_networks.dart';
import 'package:movie_mania/domain/entities/tv/tv_production_countries.dart';
import 'package:movie_mania/domain/entities/tv/tv_seasons.dart';
import 'package:movie_mania/domain/entities/tv/tv_spoken_languages.dart';

class Tv {
  final String? backdropPath;
  final List<int> episodeRunTime;
  final String firstAirDate;
  final List<TvGenres> genres;
  final String homepage;
  final int id;
  final bool inProduction;
  final List<String> languages;
  final String lastAirDate;
  final TvLastEpisodeToAir lastEpisodeToAir;
  final String name;
  final List<TvNetworks> networks;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<TvProductionCountries> productionCountries;
  final List<TvSeasons> seasons;
  final List<TvSpokenLanguages> spokenLanguages;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  Tv(
    this.backdropPath,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.networks,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCountries,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
  );

  factory Tv.fromResponse(TvDetailResponse res) => Tv(
        res.backdropPath,
        res.episodeRunTime,
        res.firstAirDate,
        res.genres.map((e) => TvGenres.fromResponse(e)).toList(),
        res.homepage,
        res.id,
        res.inProduction,
        res.languages,
        res.lastAirDate,
        TvLastEpisodeToAir.fromResponse(res.lastEpisodeToAir),
        res.name,
        res.networks.map((e) => TvNetworks.fromResponse(e)).toList(),
        res.numberOfEpisodes,
        res.numberOfSeasons,
        res.originCountry,
        res.originalLanguage,
        res.originalName,
        res.overview,
        res.popularity,
        res.posterPath,
        res.productionCountries
            .map((e) => TvProductionCountries.fromResponse(e))
            .toList(),
        res.seasons.map((e) => TvSeasons.fromResponse(e)).toList(),
        res.spokenLanguages
            .map((e) => TvSpokenLanguages.fromResponse(e))
            .toList(),
        res.status,
        res.tagline,
        res.type,
        res.voteAverage,
        res.voteCount,
      );
}
