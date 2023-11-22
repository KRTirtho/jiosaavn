import 'package:dio/dio.dart';
import 'package:jiosaavn/jiosaavn.dart';
import 'package:jiosaavn/src/client.dart';
import 'package:jiosaavn/src/collection/endpoints.dart';
import 'package:jiosaavn/src/utils/link.dart';

class LyricsEndpoint extends BaseClient {
  LyricsEndpoint([super.options]);

  Future<LyricsResponse> get(String songId) async {
    final response = await request(
      call: endpoints.lyrics,
      isAPIv4: true,
      queryParameters: {"lyrics_id": songId},
    );

    final lyricReq = LyricsRequest.fromJson(response);

    if (lyricReq.lyrics == null) {
      throw DioException(
        type: DioExceptionType.badResponse,
        error: "Lyrics not found for this song",
        requestOptions: RequestOptions(
          baseUrl: options?.baseUrl,
          queryParameters: options?.queryParameters,
          path: endpoints.lyrics,
        ),
      );
    }

    return LyricsResponse(
      copyright: lyricReq.lyricsCopyRight,
      snippet: lyricReq.snippet,
      lyrics: lyricReq.lyrics == null ? null : sanitizeLyrics(lyricReq.lyrics!),
    );
  }
}
