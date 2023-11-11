import 'package:jiosaavn/src/models/image.dart';
import 'package:jiosaavn/src/utils/link.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search.g.dart';

@JsonSerializable()
class AllSearchResponse {
  @JsonKey(name: 'albums')
  SearchResponse<List<SearchAlbumResponse>> albums;

  @JsonKey(name: 'songs')
  SearchResponse<List<SearchSongResponse>> songs;

  @JsonKey(name: 'artists')
  SearchResponse<List<SearchArtistResponse>> artists;

  @JsonKey(name: 'playlists')
  SearchResponse<List<SearchPlaylistResponse>> playlists;

  @JsonKey(name: 'topQuery')
  SearchResponse<List<SearchTopQueryResponse>> topQuery;

  AllSearchResponse({
    required this.albums,
    required this.songs,
    required this.artists,
    required this.playlists,
    required this.topQuery,
  });

  factory AllSearchResponse.fromCustomJson(
      Map<String, dynamic> allSearchResults) {
    return AllSearchResponse(
      topQuery: SearchResponse(
        results: allSearchResults["topquery"]?["data"]
            .map((item) {
              return SearchTopQueryResponse.fromJson({
                ...item,
                ...?item?["more_info"],
              });
            })
            .toList()
            .cast<SearchTopQueryResponse>(),
        position: allSearchResults["topquery"]?["position"],
      ),

      songs: SearchResponse(
        results: allSearchResults["songs"]?["data"]
            .map((item) {
              return SearchSongResponse.fromJson({
                ...item,
                ...?item["more_info"],
              });
            })
            .toList()
            .cast<SearchSongResponse>(),
        position: allSearchResults["songs"]["position"],
      ),
      albums: SearchResponse(
        results: allSearchResults["albums"]?["data"]
            .map((item) => SearchAlbumResponse.fromJson({
                  ...item,
                  ...?item["more_info"],
                }))
            .toList()
            .cast<SearchAlbumResponse>(),
        position: allSearchResults["albums"]?["position"],
      ),

      artists: SearchResponse(
        results: allSearchResults["artists"]?["data"]
            .map((item) => SearchArtistResponse.fromJson(item))
            .toList()
            .cast<SearchArtistResponse>(),
        position: allSearchResults["artists"]?["position"],
      ),

      /// TODO: Add playlists support
      playlists: SearchResponse(position: 0, results: []),
    );
  }

  factory AllSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$AllSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllSearchResponseToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class SearchResponse<T> {
  T results;
  int position;

  SearchResponse({
    required this.results,
    required this.position,
  });

  factory SearchResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SearchResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$SearchResponseToJson(this, toJsonT);
}

@JsonSerializable()
class SearchAlbumResponse {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image', fromJson: createImageLinks)
  List<DownloadLink>? image;

  @JsonKey(name: 'artist')
  String? artist;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'year')
  String year;

  @JsonKey(name: 'language')
  String language;

  @JsonKey(name: 'song_ids')
  String? songIds;

  SearchAlbumResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.artist,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.year,
    required this.language,
    required this.songIds,
  });

  factory SearchAlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchAlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAlbumResponseToJson(this);
}

@JsonSerializable()
class SearchSongResponse {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image', fromJson: createImageLinks)
  List<DownloadLink>? image;

  @JsonKey(name: 'album')
  String album;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'primary_artists')
  String primaryArtists;

  @JsonKey(name: 'singers')
  String singers;

  @JsonKey(name: 'language')
  String language;

  SearchSongResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.album,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.primaryArtists,
    required this.singers,
    required this.language,
  });

  factory SearchSongResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchSongResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSongResponseToJson(this);
}

@JsonSerializable()
class SearchArtistResponse {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image', fromJson: createImageLinks)
  List<DownloadLink>? image;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'position')
  int position;

  SearchArtistResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
  });

  factory SearchArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchArtistResponseToJson(this);
}

@JsonSerializable()
class SearchPlaylistResponse {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image', fromJson: createImageLinks)
  List<DownloadLink>? image;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'language')
  String language;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'position')
  int position;

  SearchPlaylistResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.language,
    required this.type,
    required this.description,
    required this.position,
  });

  factory SearchPlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPlaylistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPlaylistResponseToJson(this);
}

@JsonSerializable()
class SearchTopQueryResponse {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'image', fromJson: createImageLinks)
  List<DownloadLink>? image;

  @JsonKey(name: 'album')
  String? album;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'position')
  int position;

  @JsonKey(name: 'primary_artists')
  String? primaryArtists;

  @JsonKey(name: 'singers')
  String? singers;

  @JsonKey(name: 'language')
  String? language;

  SearchTopQueryResponse({
    required this.id,
    required this.title,
    this.image,
    required this.album,
    required this.url,
    required this.type,
    required this.description,
    required this.position,
    required this.primaryArtists,
    required this.singers,
    required this.language,
  });

  factory SearchTopQueryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchTopQueryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTopQueryResponseToJson(this);
}
