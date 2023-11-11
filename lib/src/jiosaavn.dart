import 'package:dio/dio.dart';
import 'package:jiosaavn/src/endpoints/album.dart';
import 'package:jiosaavn/src/endpoints/artist.dart';
import 'package:jiosaavn/src/endpoints/search.dart';
import 'package:jiosaavn/src/endpoints/song.dart';

class JioSaavnClient {
  final AlbumEndpoint albums;
  final ArtistEndpoint artists;
  final SongEndpoint songs;
  final SearchEndpoint search;

  JioSaavnClient([BaseOptions? options])
      : albums = AlbumEndpoint(options),
        artists = ArtistEndpoint(options),
        songs = SongEndpoint(options),
        search = SearchEndpoint(options);
}
