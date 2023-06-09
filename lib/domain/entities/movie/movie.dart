import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';
import 'package:movie_mania/domain/entities/movie/movie_genres.dart';
import 'package:movie_mania/domain/entities/movie/movie_production_companies.dart';
import 'package:movie_mania/domain/entities/movie/movie_production_countries.dart';
import 'package:movie_mania/domain/entities/movie/movie_spoken_languages.dart';

class Movie {
  final bool adult;
  final String? _backdropPath;
  dynamic belongsToCollection;
  final int budget;
  final List<MovieGenres> _genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String _posterPath;
  final List<MovieProductionCompanies> productionCompanies;
  final List<MovieProductionCountries> productionCountries;
  final String releaseDate;
  final int revenue;
  final int _runtime;
  final List<MovieSpokenLanguages> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  String get backdropPath =>
      "https://image.tmdb.org/t/p/original$_backdropPath";

  String get posterPath => "https://image.tmdb.org/t/p/original$_posterPath";

  String get genres => _genres.map((e) => e.name).join(", ");

  String get runtime {
    var d = Duration(minutes: _runtime);
    List<String> parts = d.toString().split(':');
    return '${parts[0]}h ${parts[1]}m';
  }

  Movie(
      this.adult,
      this._backdropPath,
      this.budget,
      this._genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this._posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this._runtime,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory Movie.fromResponse(MovieDetailResponse res) => Movie(
        res.adult,
        res.backdropPath,
        res.budget,
        res.genres.map((e) => MovieGenres.fromResponse(e)).toList(),
        res.homepage,
        res.id,
        res.imdbId,
        res.originalLanguage,
        res.originalTitle,
        res.overview,
        res.popularity,
        res.posterPath,
        res.productionCompanies
            .map((e) => MovieProductionCompanies.fromResponse(e))
            .toList(),
        res.productionCountries
            .map((e) => MovieProductionCountries.fromResponse(e))
            .toList(),
        res.releaseDate,
        res.revenue,
        res.runtime,
        res.spokenLanguages
            .map((e) => MovieSpokenLanguages.fromResponse(e))
            .toList(),
        res.status,
        res.tagline,
        res.title,
        res.video,
        res.voteAverage,
        res.voteCount,
      );
}
