import 'package:movie_mania/data/source/network/response/tv/tv_detail_response.dart';
import 'package:movie_mania/generated/json/base/json_convert_content.dart';

TvDetailResponse $TvDetailResponseFromJson(Map<String, dynamic> json) {
  final TvDetailResponse tvDetailResponse = TvDetailResponse();
  final String? backdropPath =
      jsonConvert.convert<String>(json['backdrop_path']);
  if (backdropPath != null) {
    tvDetailResponse.backdropPath = backdropPath;
  }
  final List<int>? episodeRunTime =
      jsonConvert.convertListNotNull<int>(json['episode_run_time']);
  if (episodeRunTime != null) {
    tvDetailResponse.episodeRunTime = episodeRunTime;
  }
  final String? firstAirDate =
      jsonConvert.convert<String>(json['first_air_date']);
  if (firstAirDate != null) {
    tvDetailResponse.firstAirDate = firstAirDate;
  }
  final List<TvDetailResponseGenres>? genres =
      jsonConvert.convertListNotNull<TvDetailResponseGenres>(json['genres']);
  if (genres != null) {
    tvDetailResponse.genres = genres;
  }
  final String? homepage = jsonConvert.convert<String>(json['homepage']);
  if (homepage != null) {
    tvDetailResponse.homepage = homepage;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponse.id = id;
  }
  final bool? inProduction = jsonConvert.convert<bool>(json['in_production']);
  if (inProduction != null) {
    tvDetailResponse.inProduction = inProduction;
  }
  final List<String>? languages =
      jsonConvert.convertListNotNull<String>(json['languages']);
  if (languages != null) {
    tvDetailResponse.languages = languages;
  }
  final String? lastAirDate =
      jsonConvert.convert<String>(json['last_air_date']);
  if (lastAirDate != null) {
    tvDetailResponse.lastAirDate = lastAirDate;
  }
  final TvDetailResponseLastEpisodeToAir? lastEpisodeToAir = jsonConvert
      .convert<TvDetailResponseLastEpisodeToAir>(json['last_episode_to_air']);
  if (lastEpisodeToAir != null) {
    tvDetailResponse.lastEpisodeToAir = lastEpisodeToAir;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponse.name = name;
  }
  final TvDetailResponseNextEpisodeToAir? nextEpisodeToAir = jsonConvert
      .convert<TvDetailResponseNextEpisodeToAir>(json['next_episode_to_air']);
  if (nextEpisodeToAir != null) {
    tvDetailResponse.nextEpisodeToAir = nextEpisodeToAir;
  }
  final List<TvDetailResponseNetworks>? networks = jsonConvert
      .convertListNotNull<TvDetailResponseNetworks>(json['networks']);
  if (networks != null) {
    tvDetailResponse.networks = networks;
  }
  final int? numberOfEpisodes =
      jsonConvert.convert<int>(json['number_of_episodes']);
  if (numberOfEpisodes != null) {
    tvDetailResponse.numberOfEpisodes = numberOfEpisodes;
  }
  final int? numberOfSeasons =
      jsonConvert.convert<int>(json['number_of_seasons']);
  if (numberOfSeasons != null) {
    tvDetailResponse.numberOfSeasons = numberOfSeasons;
  }
  final List<String>? originCountry =
      jsonConvert.convertListNotNull<String>(json['origin_country']);
  if (originCountry != null) {
    tvDetailResponse.originCountry = originCountry;
  }
  final String? originalLanguage =
      jsonConvert.convert<String>(json['original_language']);
  if (originalLanguage != null) {
    tvDetailResponse.originalLanguage = originalLanguage;
  }
  final String? originalName =
      jsonConvert.convert<String>(json['original_name']);
  if (originalName != null) {
    tvDetailResponse.originalName = originalName;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    tvDetailResponse.overview = overview;
  }
  final double? popularity = jsonConvert.convert<double>(json['popularity']);
  if (popularity != null) {
    tvDetailResponse.popularity = popularity;
  }
  final String? posterPath = jsonConvert.convert<String>(json['poster_path']);
  if (posterPath != null) {
    tvDetailResponse.posterPath = posterPath;
  }
  final List<TvDetailResponseProductionCountries>? productionCountries =
      jsonConvert.convertListNotNull<TvDetailResponseProductionCountries>(
          json['production_countries']);
  if (productionCountries != null) {
    tvDetailResponse.productionCountries = productionCountries;
  }
  final List<TvDetailResponseSeasons>? seasons =
      jsonConvert.convertListNotNull<TvDetailResponseSeasons>(json['seasons']);
  if (seasons != null) {
    tvDetailResponse.seasons = seasons;
  }
  final List<TvDetailResponseSpokenLanguages>? spokenLanguages =
      jsonConvert.convertListNotNull<TvDetailResponseSpokenLanguages>(
          json['spoken_languages']);
  if (spokenLanguages != null) {
    tvDetailResponse.spokenLanguages = spokenLanguages;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    tvDetailResponse.status = status;
  }
  final String? tagline = jsonConvert.convert<String>(json['tagline']);
  if (tagline != null) {
    tvDetailResponse.tagline = tagline;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    tvDetailResponse.type = type;
  }
  final double? voteAverage = jsonConvert.convert<double>(json['vote_average']);
  if (voteAverage != null) {
    tvDetailResponse.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    tvDetailResponse.voteCount = voteCount;
  }
  return tvDetailResponse;
}

Map<String, dynamic> $TvDetailResponseToJson(TvDetailResponse entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['backdrop_path'] = entity.backdropPath;
  data['episode_run_time'] = entity.episodeRunTime;
  data['first_air_date'] = entity.firstAirDate;
  data['genres'] = entity.genres.map((v) => v.toJson()).toList();
  data['homepage'] = entity.homepage;
  data['id'] = entity.id;
  data['in_production'] = entity.inProduction;
  data['languages'] = entity.languages;
  data['last_air_date'] = entity.lastAirDate;
  data['last_episode_to_air'] = entity.lastEpisodeToAir.toJson();
  data['name'] = entity.name;
  data['next_episode_to_air'] = entity.nextEpisodeToAir?.toJson();
  data['networks'] = entity.networks.map((v) => v.toJson()).toList();
  data['number_of_episodes'] = entity.numberOfEpisodes;
  data['number_of_seasons'] = entity.numberOfSeasons;
  data['origin_country'] = entity.originCountry;
  data['original_language'] = entity.originalLanguage;
  data['original_name'] = entity.originalName;
  data['overview'] = entity.overview;
  data['popularity'] = entity.popularity;
  data['poster_path'] = entity.posterPath;
  data['production_countries'] =
      entity.productionCountries.map((v) => v.toJson()).toList();
  data['seasons'] = entity.seasons.map((v) => v.toJson()).toList();
  data['spoken_languages'] =
      entity.spokenLanguages.map((v) => v.toJson()).toList();
  data['status'] = entity.status;
  data['tagline'] = entity.tagline;
  data['type'] = entity.type;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}

TvDetailResponseGenres $TvDetailResponseGenresFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseGenres tvDetailResponseGenres =
      TvDetailResponseGenres();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponseGenres.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseGenres.name = name;
  }
  return tvDetailResponseGenres;
}

Map<String, dynamic> $TvDetailResponseGenresToJson(
    TvDetailResponseGenres entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

TvDetailResponseLastEpisodeToAir $TvDetailResponseLastEpisodeToAirFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseLastEpisodeToAir tvDetailResponseLastEpisodeToAir =
      TvDetailResponseLastEpisodeToAir();
  final String? airDate = jsonConvert.convert<String>(json['air_date']);
  if (airDate != null) {
    tvDetailResponseLastEpisodeToAir.airDate = airDate;
  }
  final int? episodeNumber = jsonConvert.convert<int>(json['episode_number']);
  if (episodeNumber != null) {
    tvDetailResponseLastEpisodeToAir.episodeNumber = episodeNumber;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponseLastEpisodeToAir.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseLastEpisodeToAir.name = name;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    tvDetailResponseLastEpisodeToAir.overview = overview;
  }
  final String? productionCode =
      jsonConvert.convert<String>(json['production_code']);
  if (productionCode != null) {
    tvDetailResponseLastEpisodeToAir.productionCode = productionCode;
  }
  final int? seasonNumber = jsonConvert.convert<int>(json['season_number']);
  if (seasonNumber != null) {
    tvDetailResponseLastEpisodeToAir.seasonNumber = seasonNumber;
  }
  final dynamic stillPath = jsonConvert.convert<dynamic>(json['still_path']);
  if (stillPath != null) {
    tvDetailResponseLastEpisodeToAir.stillPath = stillPath;
  }
  final int? voteAverage = jsonConvert.convert<int>(json['vote_average']);
  if (voteAverage != null) {
    tvDetailResponseLastEpisodeToAir.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    tvDetailResponseLastEpisodeToAir.voteCount = voteCount;
  }
  return tvDetailResponseLastEpisodeToAir;
}

Map<String, dynamic> $TvDetailResponseLastEpisodeToAirToJson(
    TvDetailResponseLastEpisodeToAir entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['air_date'] = entity.airDate;
  data['episode_number'] = entity.episodeNumber;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['overview'] = entity.overview;
  data['production_code'] = entity.productionCode;
  data['season_number'] = entity.seasonNumber;
  data['still_path'] = entity.stillPath;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}

TvDetailResponseNextEpisodeToAir $TvDetailResponseNextEpisodeToAirFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseNextEpisodeToAir tvDetailResponseNextEpisodeToAir =
      TvDetailResponseNextEpisodeToAir();
  final String? airDate = jsonConvert.convert<String>(json['air_date']);
  if (airDate != null) {
    tvDetailResponseNextEpisodeToAir.airDate = airDate;
  }
  final int? episodeNumber = jsonConvert.convert<int>(json['episode_number']);
  if (episodeNumber != null) {
    tvDetailResponseNextEpisodeToAir.episodeNumber = episodeNumber;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponseNextEpisodeToAir.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseNextEpisodeToAir.name = name;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    tvDetailResponseNextEpisodeToAir.overview = overview;
  }
  final String? productionCode =
      jsonConvert.convert<String>(json['production_code']);
  if (productionCode != null) {
    tvDetailResponseNextEpisodeToAir.productionCode = productionCode;
  }
  final int? seasonNumber = jsonConvert.convert<int>(json['season_number']);
  if (seasonNumber != null) {
    tvDetailResponseNextEpisodeToAir.seasonNumber = seasonNumber;
  }
  final dynamic stillPath = jsonConvert.convert<dynamic>(json['still_path']);
  if (stillPath != null) {
    tvDetailResponseNextEpisodeToAir.stillPath = stillPath;
  }
  final int? voteAverage = jsonConvert.convert<int>(json['vote_average']);
  if (voteAverage != null) {
    tvDetailResponseNextEpisodeToAir.voteAverage = voteAverage;
  }
  final int? voteCount = jsonConvert.convert<int>(json['vote_count']);
  if (voteCount != null) {
    tvDetailResponseNextEpisodeToAir.voteCount = voteCount;
  }
  return tvDetailResponseNextEpisodeToAir;
}

Map<String, dynamic> $TvDetailResponseNextEpisodeToAirToJson(
    TvDetailResponseNextEpisodeToAir entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['air_date'] = entity.airDate;
  data['episode_number'] = entity.episodeNumber;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['overview'] = entity.overview;
  data['production_code'] = entity.productionCode;
  data['season_number'] = entity.seasonNumber;
  data['still_path'] = entity.stillPath;
  data['vote_average'] = entity.voteAverage;
  data['vote_count'] = entity.voteCount;
  return data;
}

TvDetailResponseNetworks $TvDetailResponseNetworksFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseNetworks tvDetailResponseNetworks =
      TvDetailResponseNetworks();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseNetworks.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponseNetworks.id = id;
  }
  final dynamic logoPath = jsonConvert.convert<dynamic>(json['logo_path']);
  if (logoPath != null) {
    tvDetailResponseNetworks.logoPath = logoPath;
  }
  final String? originCountry =
      jsonConvert.convert<String>(json['origin_country']);
  if (originCountry != null) {
    tvDetailResponseNetworks.originCountry = originCountry;
  }
  return tvDetailResponseNetworks;
}

Map<String, dynamic> $TvDetailResponseNetworksToJson(
    TvDetailResponseNetworks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['logo_path'] = entity.logoPath;
  data['origin_country'] = entity.originCountry;
  return data;
}

TvDetailResponseProductionCountries
    $TvDetailResponseProductionCountriesFromJson(Map<String, dynamic> json) {
  final TvDetailResponseProductionCountries
      tvDetailResponseProductionCountries =
      TvDetailResponseProductionCountries();
  final String? iso31661 = jsonConvert.convert<String>(json['iso_3166_1']);
  if (iso31661 != null) {
    tvDetailResponseProductionCountries.iso31661 = iso31661;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseProductionCountries.name = name;
  }
  return tvDetailResponseProductionCountries;
}

Map<String, dynamic> $TvDetailResponseProductionCountriesToJson(
    TvDetailResponseProductionCountries entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['iso_3166_1'] = entity.iso31661;
  data['name'] = entity.name;
  return data;
}

TvDetailResponseSeasons $TvDetailResponseSeasonsFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseSeasons tvDetailResponseSeasons =
      TvDetailResponseSeasons();
  final String? airDate = jsonConvert.convert<String>(json['air_date']);
  if (airDate != null) {
    tvDetailResponseSeasons.airDate = airDate;
  }
  final int? episodeCount = jsonConvert.convert<int>(json['episode_count']);
  if (episodeCount != null) {
    tvDetailResponseSeasons.episodeCount = episodeCount;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    tvDetailResponseSeasons.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseSeasons.name = name;
  }
  final String? overview = jsonConvert.convert<String>(json['overview']);
  if (overview != null) {
    tvDetailResponseSeasons.overview = overview;
  }
  final dynamic posterPath = jsonConvert.convert<dynamic>(json['poster_path']);
  if (posterPath != null) {
    tvDetailResponseSeasons.posterPath = posterPath;
  }
  final int? seasonNumber = jsonConvert.convert<int>(json['season_number']);
  if (seasonNumber != null) {
    tvDetailResponseSeasons.seasonNumber = seasonNumber;
  }
  return tvDetailResponseSeasons;
}

Map<String, dynamic> $TvDetailResponseSeasonsToJson(
    TvDetailResponseSeasons entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['air_date'] = entity.airDate;
  data['episode_count'] = entity.episodeCount;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['overview'] = entity.overview;
  data['poster_path'] = entity.posterPath;
  data['season_number'] = entity.seasonNumber;
  return data;
}

TvDetailResponseSpokenLanguages $TvDetailResponseSpokenLanguagesFromJson(
    Map<String, dynamic> json) {
  final TvDetailResponseSpokenLanguages tvDetailResponseSpokenLanguages =
      TvDetailResponseSpokenLanguages();
  final String? englishName = jsonConvert.convert<String>(json['english_name']);
  if (englishName != null) {
    tvDetailResponseSpokenLanguages.englishName = englishName;
  }
  final String? iso6391 = jsonConvert.convert<String>(json['iso_639_1']);
  if (iso6391 != null) {
    tvDetailResponseSpokenLanguages.iso6391 = iso6391;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    tvDetailResponseSpokenLanguages.name = name;
  }
  return tvDetailResponseSpokenLanguages;
}

Map<String, dynamic> $TvDetailResponseSpokenLanguagesToJson(
    TvDetailResponseSpokenLanguages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['english_name'] = entity.englishName;
  data['iso_639_1'] = entity.iso6391;
  data['name'] = entity.name;
  return data;
}
