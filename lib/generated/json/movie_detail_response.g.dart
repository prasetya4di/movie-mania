import 'package:movie_mania/data/source/network/response/movie/movie_detail_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

MovieDetailResponse $MovieDetailResponseFromJson(Map<String, dynamic> json) {
  final MovieDetailResponse movieDetailResponse = MovieDetailResponse();
  final bool? adult = jsonConvert.convert<bool>(json['adult']);
  if (adult != null) {
    movieDetailResponse.adult = adult;
  }
  final String? backdropPath =
      jsonConvert.convert<String>(json['backdrop_path']);
  if (backdropPath != null) {
    movieDetailResponse.backdropPath = backdropPath;
  }
  final dynamic belongsToCollection =
      jsonConvert.convert<dynamic>(json['belongs_to_collection']);
  if (belongsToCollection != null) {
    movieDetailResponse.belongsToCollection = belongsToCollection;
  }
  final int? budget = jsonConvert.convert<int>(json['budget']);
  if (budget != null) {
    movieDetailResponse.budget = budget;
  }
  final List<MovieDetailResponseGenres>? genres =
      jsonConvert.convertListNotNull<MovieDetailResponseGenres>(json['genres']);
  if (genres != null) {
    movieDetailResponse.genres = genres;
  }
  final String? homepage = jsonConvert.convert<String>(json['homepage']);
  if (homepage != null) {
    movieDetailResponse.homepage = homepage;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    movieDetailResponse.id = id;
  }
  final String? imdbId = jsonConvert.convert<String>(json['imdb_id']);
  if (imdbId != null) {
    movieDetailResponse.imdbId = imdbId;
  }
  final String? originalLanguage =
      jsonConvert.convert<String>(json['original_language']);
  if (originalLanguage != null) {
    movieDetailResponse.originalLanguage = originalLanguage;
  }
  final String? originalTitle =
      jsonConvert.convert<String>(json['original_title']);
  if (originalTitle != null) {
    movieDetailResponse.originalTitle = originalTitle;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    movieDetailResponse.overview = overview;
  }
  final double? popularity = jsonConvert.convert<double>(json['popularity']);
  if (popularity != null) {
    movieDetailResponse.popularity = popularity;
  }
  final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
  if (posterPath != null) {
    movieDetailResponse.posterPath = posterPath;
  }
  final List<MovieDetailResponseProductionCompanies>? productionCompanies =
      jsonConvert.convertListNotNull<MovieDetailResponseProductionCompanies>(
          json['production_companies']);
  if (productionCompanies != null) {
    movieDetailResponse.productionCompanies = productionCompanies;
  }
  final List<MovieDetailResponseProductionCountries>? productionCountries =
      jsonConvert.convertListNotNull<MovieDetailResponseProductionCountries>(
          json['production_countries']);
  if (productionCountries != null) {
    movieDetailResponse.productionCountries = productionCountries;
  }
  final String? releaseDate = jsonConvert.convert<String>(json['release_date']);
  if (releaseDate != null) {
    movieDetailResponse.releaseDate = releaseDate;
  }
  final int? revenue = jsonConvert.convert<int>(json['revenue']);
  if (revenue != null) {
    movieDetailResponse.revenue = revenue;
  }
  final int? runtime = jsonConvert.convert<int>(json['runtime']);
  if (runtime != null) {
    movieDetailResponse.runtime = runtime;
  }
  final List<MovieDetailResponseSpokenLanguages>? spokenLanguages =
      jsonConvert.convertListNotNull<MovieDetailResponseSpokenLanguages>(
          json['spoken_languages']);
  if (spokenLanguages != null) {
    movieDetailResponse.spokenLanguages = spokenLanguages;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    movieDetailResponse.status = status;
  }
  final String? tagline = jsonConvert.convert<String>(json['tagline']);
  if (tagline != null) {
    movieDetailResponse.tagline = tagline;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    movieDetailResponse.title = title;
  }
  final bool? video = jsonConvert.convert<bool>(json['video']);
  if (video != null) {
    movieDetailResponse.video = video;
  }
  final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
  if (voteAverage != null) {
    movieDetailResponse.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    movieDetailResponse.voteCount = voteCount;
  }
  return movieDetailResponse;
}

Map<String, dynamic> $MovieDetailResponseToJson(MovieDetailResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adult'] = entity.adult;
  data['backdrop_path'] = entity.backdropPath;
  data['belongs_to_collection'] = entity.belongsToCollection;
  data['budget'] = entity.budget;
  data['genres'] = entity.genres.map((v) => v.toJson()).toList();
  data['homepage'] = entity.homepage;
  data['id'] = entity.id;
  data['imdb_id'] = entity.imdbId;
  data['original_language'] = entity.originalLanguage;
  data['original_title'] = entity.originalTitle;
  data['overview'] = entity.overview;
  data['popularity'] = entity.popularity;
  data['poster_path'] = entity.posterPath;
  data['production_companies'] =
      entity.productionCompanies.map((v) => v.toJson()).toList();
  data['production_countries'] =
      entity.productionCountries.map((v) => v.toJson()).toList();
  data['release_date'] = entity.releaseDate;
  data['revenue'] = entity.revenue;
  data['runtime'] = entity.runtime;
  data['spoken_languages'] =
      entity.spokenLanguages.map((v) => v.toJson()).toList();
  data['status'] = entity.status;
  data['tagline'] = entity.tagline;
  data['title'] = entity.title;
  data['video'] = entity.video;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}

MovieDetailResponseGenres $MovieDetailResponseGenresFromJson(
    Map<String, dynamic> json) {
  final MovieDetailResponseGenres movieDetailResponseGenres =
      MovieDetailResponseGenres();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    movieDetailResponseGenres.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    movieDetailResponseGenres.name = name;
  }
  return movieDetailResponseGenres;
}

Map<String, dynamic> $MovieDetailResponseGenresToJson(
    MovieDetailResponseGenres entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

MovieDetailResponseProductionCompanies
    $MovieDetailResponseProductionCompaniesFromJson(Map<String, dynamic> json) {
  final MovieDetailResponseProductionCompanies
      movieDetailResponseProductionCompanies =
      MovieDetailResponseProductionCompanies();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    movieDetailResponseProductionCompanies.id = id;
  }
  final String? logoPath = jsonConvert.convert<String>(json['logo_path']);
  if (logoPath != null) {
    movieDetailResponseProductionCompanies.logoPath = logoPath;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    movieDetailResponseProductionCompanies.name = name;
  }
  final String? originCountry =
      jsonConvert.convert<String>(json['origin_country']);
  if (originCountry != null) {
    movieDetailResponseProductionCompanies.originCountry = originCountry;
  }
  return movieDetailResponseProductionCompanies;
}

Map<String, dynamic> $MovieDetailResponseProductionCompaniesToJson(
    MovieDetailResponseProductionCompanies entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['logo_path'] = entity.logoPath;
  data['name'] = entity.name;
  data['origin_country'] = entity.originCountry;
  return data;
}

MovieDetailResponseProductionCountries
    $MovieDetailResponseProductionCountriesFromJson(Map<String, dynamic> json) {
  final MovieDetailResponseProductionCountries
      movieDetailResponseProductionCountries =
      MovieDetailResponseProductionCountries();
  final String? iso31661 = jsonConvert.convert<String>(json['iso_3166_1']);
  if (iso31661 != null) {
    movieDetailResponseProductionCountries.iso31661 = iso31661;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    movieDetailResponseProductionCountries.name = name;
  }
  return movieDetailResponseProductionCountries;
}

Map<String, dynamic> $MovieDetailResponseProductionCountriesToJson(
    MovieDetailResponseProductionCountries entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['iso_3166_1'] = entity.iso31661;
  data['name'] = entity.name;
  return data;
}

MovieDetailResponseSpokenLanguages $MovieDetailResponseSpokenLanguagesFromJson(
    Map<String, dynamic> json) {
  final MovieDetailResponseSpokenLanguages movieDetailResponseSpokenLanguages =
      MovieDetailResponseSpokenLanguages();
  final String? englishName = jsonConvert.convert<String>(json['english_name']);
  if (englishName != null) {
    movieDetailResponseSpokenLanguages.englishName = englishName;
  }
  final String? iso6391 = jsonConvert.convert<String>(json['iso_639_1']);
  if (iso6391 != null) {
    movieDetailResponseSpokenLanguages.iso6391 = iso6391;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    movieDetailResponseSpokenLanguages.name = name;
  }
  return movieDetailResponseSpokenLanguages;
}

Map<String, dynamic> $MovieDetailResponseSpokenLanguagesToJson(
    MovieDetailResponseSpokenLanguages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['english_name'] = entity.englishName;
  data['iso_639_1'] = entity.iso6391;
  data['name'] = entity.name;
  return data;
}
