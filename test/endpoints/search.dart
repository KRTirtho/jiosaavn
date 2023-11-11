import 'package:jiosaavn/src/endpoints/search.dart';
import 'package:jiosaavn/src/models/album.dart';
import 'package:jiosaavn/src/models/artist.dart';
import 'package:jiosaavn/src/models/search.dart';
import 'package:jiosaavn/src/models/song.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  final search = SearchEndpoint();

  group("Search Endpoint => ", () {
    test("All types of search", () async {
      final res = await search.all("Miley Cyrus");

      expect(res, isA<AllSearchResponse>());
    });

    test("Song search", () async {
      final res = await search.songs("Malibu - Miley Cyrus");

      expect(res, isA<SongSearchResponse>());
    });

    test("Album search", () async {
      final res = await search.albums("Scaled and Icy");

      expect(res, isA<AlbumSearchResponse>());
    });

    test("Artist search", () async {
      final res = await search.artists("Twenty One Pilots");

      expect(res, isA<ArtistSearchResponse>());
    });
  });
}
