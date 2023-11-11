import 'dart:convert';

import 'package:dio/dio.dart';

abstract class BaseClient {
  final BaseOptions? options;
  final Dio dio;
  BaseClient([this.options])
      : dio = Dio(
          options ??
              BaseOptions(
                baseUrl: 'https://www.jiosaavn.com/api.php',
                queryParameters: {
                  '_format': 'json',
                  '_marker': '0',
                  'ctx': 'wap6dot0',
                },
                responseType: ResponseType.json,
              ),
        );

  Future<Map<String, dynamic>> request({
    /// Use [endpoints] from [lib/collection/endpoints.dart]
    required String call,
    bool isAPIv4 = false,
    String language = 'english',
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await dio.get(
      "/",
      queryParameters: {
        if (isAPIv4) 'api_version': 4,
        '__call': call,
        ...?queryParameters,
      },
      options: Options(
        headers: {
          "cookie":
              'L=${Uri.encodeComponent(language)}; gdpr_acceptance=true; DL=english',
        },
      ),
    );

    return jsonDecode(res.data) as Map<String, dynamic>;
  }
}
