// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SearchService extends SearchService {
  _$SearchService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SearchService;

  @override
  Future<Response<MoviesResponse>> searchMovie(
    int page,
    String query,
  ) {
    final Uri $url = Uri.parse('/search/movie');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'query': query,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<MoviesResponse, MoviesResponse>($request);
  }

  @override
  Future<Response<TvsResponse>> searchTv(
    int page,
    String query,
  ) {
    final Uri $url = Uri.parse('/search/tv');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'query': query,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvsResponse, TvsResponse>($request);
  }
}
