// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MovieService extends MovieService {
  _$MovieService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MovieService;

  @override
  Future<Response<MoviesResponse>> getNowPlaying(int page) {
    final Uri $url = Uri.parse('/movie/now_playing');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviesResponse, MoviesResponse>($request);
  }

  @override
  Future<Response<MoviesResponse>> getPopularMovie(int page) {
    final Uri $url = Uri.parse('/movie/popular');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviesResponse, MoviesResponse>($request);
  }

  @override
  Future<Response<MoviesResponse>> getMovieRecommendation(
    int movieId,
    int page,
  ) {
    final Uri $url = Uri.parse('/movie/${movieId}/recommendations');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviesResponse, MoviesResponse>($request);
  }

  @override
  Future<Response<MovieDetailResponse>> getDetail(int movieId) {
    final Uri $url = Uri.parse('/movie/${movieId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieDetailResponse, MovieDetailResponse>($request);
  }
}
