import 'package:movie_mania/domain/entities/tv/tv_genres.dart';
import 'package:movie_mania/domain/entities/tv/tv_last_episode_to_air.dart';
import 'package:movie_mania/domain/entities/tv/tv_networks.dart';
import 'package:movie_mania/domain/entities/tv/tv_next_episode_to_air.dart';
import 'package:movie_mania/domain/entities/tv/tv_production_countries.dart';
import 'package:movie_mania/domain/entities/tv/tv_seasons.dart';
import 'package:movie_mania/domain/entities/tv/tv_spoken_languages.dart';

class Tv {
  late String backdropPath;
  late List<dynamic> createdBy;
  late List<int> episodeRunTime;
  late String firstAirDate;
  late List<TvGenres> genres;
  late String homepage;
  late int id;
  late bool inProduction;
  late List<String> languages;
  late String lastAirDate;
  late TvLastEpisodeToAir lastEpisodeToAir;
  late String name;
  late TvNextEpisodeToAir nextEpisodeToAir;
  late List<TvNetworks> networks;
  late int numberOfEpisodes;
  late int numberOfSeasons;
  late List<String> originCountry;
  late String originalLanguage;
  late String originalName;
  late String overview;
  late double popularity;
  late String posterPath;
  late List<dynamic> productionCompanies;
  late List<TvProductionCountries> productionCountries;
  late List<TvSeasons> seasons;
  late List<TvSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String type;
  late double voteAverage;
  late int voteCount;

  Tv();
}
