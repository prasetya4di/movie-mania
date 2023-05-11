// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TvService extends TvService {
  _$TvService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TvService;

  @override
  Future<Response<TvsResponse>> getTvOnTheAir(int page) {
    final Uri $url = Uri.parse('/tv/on_the_air');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvsResponse, TvsResponse>($request);
  }

  @override
  Future<Response<TvsResponse>> getPopularTv(int page) {
    final Uri $url = Uri.parse('/tv/popular');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvsResponse, TvsResponse>($request);
  }

  @override
  Future<Response<TvsResponse>> getTvRecommendation(
    int tvId,
    int page,
  ) {
    final Uri $url = Uri.parse('/tv/${tvId}/recommendations');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TvsResponse, TvsResponse>($request);
  }

  @override
  Future<Response<TvDetailResponse>> getDetail(int tvId) {
    final Uri $url = Uri.parse('/tv/${tvId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TvDetailResponse, TvDetailResponse>($request);
  }
}
