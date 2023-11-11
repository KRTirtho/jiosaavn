// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSearchResponse _$AllSearchResponseFromJson(Map<String, dynamic> json) =>
    AllSearchResponse(
      albums: SearchResponse<List<SearchAlbumResponse>>.fromJson(
          json['albums'] as Map<String, dynamic>,
          (value) => (value as List<dynamic>)
              .map((e) =>
                  SearchAlbumResponse.fromJson(e as Map<String, dynamic>))
              .toList()),
      songs: SearchResponse<List<SearchSongResponse>>.fromJson(
          json['songs'] as Map<String, dynamic>,
          (value) => (value as List<dynamic>)
              .map(
                  (e) => SearchSongResponse.fromJson(e as Map<String, dynamic>))
              .toList()),
      artists: SearchResponse<List<SearchArtistResponse>>.fromJson(
          json['artists'] as Map<String, dynamic>,
          (value) => (value as List<dynamic>)
              .map((e) =>
                  SearchArtistResponse.fromJson(e as Map<String, dynamic>))
              .toList()),
      playlists: SearchResponse<List<SearchPlaylistResponse>>.fromJson(
          json['playlists'] as Map<String, dynamic>,
          (value) => (value as List<dynamic>)
              .map((e) =>
                  SearchPlaylistResponse.fromJson(e as Map<String, dynamic>))
              .toList()),
      topQuery: SearchResponse<List<SearchTopQueryResponse>>.fromJson(
          json['topQuery'] as Map<String, dynamic>,
          (value) => (value as List<dynamic>)
              .map((e) =>
                  SearchTopQueryResponse.fromJson(e as Map<String, dynamic>))
              .toList()),
    );

Map<String, dynamic> _$AllSearchResponseToJson(AllSearchResponse instance) =>
    <String, dynamic>{
      'albums': instance.albums.toJson(
        (value) => value,
      ),
      'songs': instance.songs.toJson(
        (value) => value,
      ),
      'artists': instance.artists.toJson(
        (value) => value,
      ),
      'playlists': instance.playlists.toJson(
        (value) => value,
      ),
      'topQuery': instance.topQuery.toJson(
        (value) => value,
      ),
    };

SearchResponse<T> _$SearchResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SearchResponse<T>(
      results: fromJsonT(json['results']),
      position: json['position'] as int,
    );

Map<String, dynamic> _$SearchResponseToJson<T>(
  SearchResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': toJsonT(instance.results),
      'position': instance.position,
    };

SearchAlbumResponse _$SearchAlbumResponseFromJson(Map<String, dynamic> json) =>
    SearchAlbumResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: createImageLinks(json['image'] as String?),
      artist: json['artist'] as String?,
      url: json['url'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
      year: json['year'] as String,
      language: json['language'] as String,
      songIds: json['song_ids'] as String?,
    );

Map<String, dynamic> _$SearchAlbumResponseToJson(
        SearchAlbumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'artist': instance.artist,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'year': instance.year,
      'language': instance.language,
      'song_ids': instance.songIds,
    };

SearchSongResponse _$SearchSongResponseFromJson(Map<String, dynamic> json) =>
    SearchSongResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: createImageLinks(json['image'] as String?),
      album: json['album'] as String,
      url: json['url'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
      primaryArtists: json['primary_artists'] as String,
      singers: json['singers'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$SearchSongResponseToJson(SearchSongResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'album': instance.album,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'primary_artists': instance.primaryArtists,
      'singers': instance.singers,
      'language': instance.language,
    };

SearchArtistResponse _$SearchArtistResponseFromJson(
        Map<String, dynamic> json) =>
    SearchArtistResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: createImageLinks(json['image'] as String?),
      url: json['url'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
    );

Map<String, dynamic> _$SearchArtistResponseToJson(
        SearchArtistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
    };

SearchPlaylistResponse _$SearchPlaylistResponseFromJson(
        Map<String, dynamic> json) =>
    SearchPlaylistResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: createImageLinks(json['image'] as String?),
      url: json['url'] as String,
      language: json['language'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
    );

Map<String, dynamic> _$SearchPlaylistResponseToJson(
        SearchPlaylistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'url': instance.url,
      'language': instance.language,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
    };

SearchTopQueryResponse _$SearchTopQueryResponseFromJson(
        Map<String, dynamic> json) =>
    SearchTopQueryResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: createImageLinks(json['image'] as String?),
      album: json['album'] as String?,
      url: json['url'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      position: json['position'] as int,
      primaryArtists: json['primary_artists'] as String?,
      singers: json['singers'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$SearchTopQueryResponseToJson(
        SearchTopQueryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'album': instance.album,
      'url': instance.url,
      'type': instance.type,
      'description': instance.description,
      'position': instance.position,
      'primary_artists': instance.primaryArtists,
      'singers': instance.singers,
      'language': instance.language,
    };
