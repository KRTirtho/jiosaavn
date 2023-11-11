import 'package:jiosaavn/src/client.dart';
import 'package:jiosaavn/src/collection/endpoints.dart';
import 'package:jiosaavn/src/models/search.dart';

class SearchEndpoint extends BaseClient {
  SearchEndpoint([super.options]);

  Future<AllSearchResponse> all(String query) async {
    // api v4 doest not provide positions
    final result = await request(
      call: endpoints.search.all,
      queryParameters: {"query": query},
    );

    return AllSearchResponse.fromCustomJson(result);
  }
}
