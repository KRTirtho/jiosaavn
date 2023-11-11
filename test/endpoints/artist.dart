import 'package:jiosaavn/src/endpoints/artist.dart';
import 'package:jiosaavn/src/models/artist.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  final artist = ArtistEndpoint();
  final artistId = "568707";
  group("Artist Endpoint => ", () {
    test("Get Artist Details by ID", () async {
      final res = await artist.detailsById(artistId);

      expect(res, isA<ArtistResponse>());
    });

    test("Get Artist songs", () async {
      final res = await artist.artistSongs(artistId, page: 0);

      expect(res, isA<ArtistSongResponse>());
    });

    test("Get Artist albums", () async {
      final res = await artist.artistAlbums(artistId, page: 0);

      expect(res, isA<ArtistAlbumResponse>());
    });
  });
}
