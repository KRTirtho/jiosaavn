import 'package:jiosaavn/src/endpoints/search.dart';
import 'package:jiosaavn/src/models/search.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  final search = SearchEndpoint();

  group("Search Endpoint => ", () {
    test("All types of search", () async {
      final res = await search.all("Miley Cyrus");

      expect(res, isA<AllSearchResponse>());
    });
  });
}
