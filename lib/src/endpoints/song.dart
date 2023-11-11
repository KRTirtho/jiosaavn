import 'package:dio/dio.dart';
import 'package:jiosaavn/src/client.dart';
import 'package:jiosaavn/src/collection/endpoints.dart';
import 'package:jiosaavn/src/models/song.dart';

class SongEndpoint extends BaseClient {
  SongEndpoint([super.options]);

  Future<List<SongResponse>> detailsById(List<String> ids) async {
    // api v4 does not contain media_preview_url
    final response = await request(call: endpoints.songs.id, queryParameters: {
      "pids": ids.join(','),
    });

    if (response["songs"] == null || response["songs"]?.isNotEmpty == false)
      throw DioException(
        requestOptions: RequestOptions(
          baseUrl: options?.baseUrl,
          queryParameters: options?.queryParameters,
        ),
        error: "No songs found",
        type: DioExceptionType.badResponse,
      );

    return (response["songs"] as List)
        .map(
          (song) => SongResponse.fromSongRequest(SongRequest.fromJson(song)),
        )
        .toList()
        .cast<SongResponse>();
  }
}
