import 'package:jiosaavn/src/endpoints/song.dart';
import 'package:jiosaavn/src/models/song.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  final song = SongEndpoint();

  group("Song Endpoint => ", () {
    test("Get song Details by Ids", () async {
      final res = await song.detailsById(["5WXAlMNt", "csaEsVWV"]);

      expect(res, isA<List<SongResponse>>());
      expect(res, hasLength(2));
    });
  });
}
