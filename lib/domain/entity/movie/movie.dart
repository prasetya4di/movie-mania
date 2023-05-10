import 'package:movie_mania/domain/entity/movie/movie_genres.dart';
import 'package:movie_mania/domain/entity/movie/movie_production_companies.dart';
import 'package:movie_mania/domain/entity/movie/movie_production_countries.dart';
import 'package:movie_mania/domain/entity/movie/movie_spoken_languages.dart';

class Movie {
  late bool adult;
  late String backdropPath;
  dynamic belongsToCollection;
  late int budget;
  late List<MovieGenres> genres;
  late String homepage;
  late int id;
  late String imdbId;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late double popularity;
  late String posterPath;
  late List<MovieProductionCompanies> productionCompanies;
  late List<MovieProductionCountries> productionCountries;
  late String releaseDate;
  late int revenue;
  late int runtime;
  late List<MovieSpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String title;
  late bool video;
  late double voteAverage;
  late int voteCount;

  Movie();
}
