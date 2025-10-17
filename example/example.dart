import 'package:jiosaavn/src/jiosaavn.dart';

void main(List<String> args) async {
  final client = JioSaavnClient();

  final results = await client.search.songs("Imagine Dragons");

  for (var song in results.results) {
    print("${song.name} by ${song.primaryArtists}");
    print(
      "Stream URLs: ${song.downloadUrl?.map((e) => "${e.quality}: ${e.link}").join("\n")}",
    );
    print("=============================");
  }
}
