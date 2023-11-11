import 'package:jiosaavn/src/client.dart';
import 'package:jiosaavn/src/collection/endpoints.dart';
import 'package:jiosaavn/src/models/album.dart';
import 'package:jiosaavn/src/models/artist.dart';
import 'package:jiosaavn/src/models/song.dart';

class ArtistEndpoint extends BaseClient {
  ArtistEndpoint([super.options]);

  Future<ArtistResponse> detailsById(String id) async {
    final response = await request(
      call: endpoints.artists.id,
      isAPIv4: true,
      queryParameters: {
        'artistId': id,
      },
    );

    final artistDetails =
        ArtistResponse.fromArtistRequest(ArtistRequest.fromJson(response));
    return artistDetails;
  }

  Future<ArtistSongResponse> artistSongs(
    String artistId, {
    String? category,
    String? sort,
    required int page,
  }) async {
    // api v4 does not contain media_preview_url
    final response = await request(
      call: endpoints.artists.songs,
      queryParameters: {
        "artistId": artistId,
        "page": page,
        if (category != null) "category": category,
        if (sort != null) "sort_order": sort,
      },
    );

    final artist = ArtistSongRequest.fromJson(response["topSongs"]);

    return ArtistSongResponse(
      lastPage: artist.lastPage,
      results:
          artist.songs.map((e) => SongResponse.fromSongRequest(e)).toList(),
      total: artist.total,
    );
  }

  Future<ArtistAlbumResponse> artistAlbums(
    String artistId, {
    int page = 0,
    String? category,
    String? sort,
  }) async {
    // without api v4 no data is returned
    final response = await request(
        call: endpoints.artists.albums,
        isAPIv4: true,
        queryParameters: {
          "artistId": artistId,
          "page": page,
          if (category != null) "category": category,
          if (sort != null) "sort_order": sort,
        });

    final album = ArtistAlbumRequest.fromJson(response["topAlbums"]);

    return ArtistAlbumResponse(
      lastPage: album.lastPage,
      results:
          album.albums.map((e) => AlbumResponse.fromAlbumRequest(e)).toList(),
      total: album.total,
    );
  }
}
