import 'package:dio/dio.dart';
import 'package:jiosaavn/src/endpoints/album.dart';

class JioSaavnClient {
  final AlbumEndpoint albums;

  JioSaavnClient([BaseOptions? options]) : albums = AlbumEndpoint(options);
}
