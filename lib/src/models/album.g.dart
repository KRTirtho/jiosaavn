// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumSearchRequest _$AlbumSearchRequestFromJson(Map<String, dynamic> json) =>
    AlbumSearchRequest(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => AlbumRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumSearchRequestToJson(AlbumSearchRequest instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      name: json['name'] as String?,
      year: json['year'] as String,
      releaseDate: json['release_date'] as String?,
      primaryArtists: json['primary_artists'] as String?,
      primaryArtistsId: json['primary_artists_id'] as String?,
      albumId: json['albumid'] as String?,
      permaUrl: json['perma_url'] as String,
      image: json['image'] as String,
      songs: (json['songs'] as List<dynamic>?)
          ?.map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'name': instance.name,
      'year': instance.year,
      'release_date': instance.releaseDate,
      'primary_artists': instance.primaryArtists,
      'primary_artists_id': instance.primaryArtistsId,
      'albumid': instance.albumId,
      'perma_url': instance.permaUrl,
      'image': instance.image,
      'songs': instance.songs,
    };

AlbumRequest _$AlbumRequestFromJson(Map<String, dynamic> json) => AlbumRequest(
      id: json['id'] as String?,
      subtitle: json['subtitle'] as String?,
      moreInfo: json['more_info'] == null
          ? null
          : MoreInfo.fromJson(json['more_info'] as Map<String, dynamic>),
      title: json['title'] as String,
      headerDesc: json['header_desc'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      playCount: json['play_count'] as String?,
      explicitContent: json['explicit_content'] as String?,
      listCount: json['list_count'] as String?,
      listType: json['list_type'] as String?,
      list: json['list'] as String?,
      name: json['name'] as String?,
      year: json['year'] as String,
      releaseDate: json['release_date'] as String?,
      primaryArtists: json['primary_artists'] as String?,
      primaryArtistsId: json['primary_artists_id'] as String?,
      albumId: json['albumid'] as String?,
      permaUrl: json['perma_url'] as String,
      image: json['image'] as String,
      songs: (json['songs'] as List<dynamic>?)
          ?.map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumRequestToJson(AlbumRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'year': instance.year,
      'release_date': instance.releaseDate,
      'primary_artists': instance.primaryArtists,
      'primary_artists_id': instance.primaryArtistsId,
      'albumid': instance.albumId,
      'perma_url': instance.permaUrl,
      'image': instance.image,
      'songs': instance.songs,
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'header_desc': instance.headerDesc,
      'type': instance.type,
      'language': instance.language,
      'play_count': instance.playCount,
      'explicit_content': instance.explicitContent,
      'list_count': instance.listCount,
      'list_type': instance.listType,
      'list': instance.list,
      'more_info': instance.moreInfo,
    };

AlbumSearchResponse _$AlbumSearchResponseFromJson(Map<String, dynamic> json) =>
    AlbumSearchResponse(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => AlbumResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumSearchResponseToJson(
        AlbumSearchResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) =>
    AlbumResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      year: json['year'] as String,
      type: json['type'] as String?,
      playCount: json['play_count'] as String?,
      language: json['language'] as String?,
      explicitContent: json['explicit_content'] as String?,
      primaryArtistsId: json['primary_artists_id'] as String?,
      primaryArtists: (json['primary_artists'] as List<dynamic>)
          .map((e) => AlbumArtistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => AlbumArtistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredArtists: (json['featured_artists'] as List<dynamic>)
          .map((e) => AlbumArtistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      songCount: json['song_count'] as String,
      releaseDate: json['release_date'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumResponseToJson(AlbumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'type': instance.type,
      'play_count': instance.playCount,
      'language': instance.language,
      'explicit_content': instance.explicitContent,
      'primary_artists_id': instance.primaryArtistsId,
      'primary_artists': instance.primaryArtists,
      'artists': instance.artists,
      'featured_artists': instance.featuredArtists,
      'song_count': instance.songCount,
      'release_date': instance.releaseDate,
      'image': instance.image,
      'url': instance.url,
      'songs': instance.songs,
    };

AlbumArtistResponse _$AlbumArtistResponseFromJson(Map<String, dynamic> json) =>
    AlbumArtistResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      role: json['role'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AlbumArtistResponseToJson(
        AlbumArtistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'image': instance.image,
      'type': instance.type,
      'url': instance.url,
    };

ArtistMap _$ArtistMapFromJson(Map<String, dynamic> json) => ArtistMap(
      primaryArtists: (json['primary_artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredArtists: (json['featured_artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistMapToJson(ArtistMap instance) => <String, dynamic>{
      'primary_artists': instance.primaryArtists,
      'featured_artists': instance.featuredArtists,
      'artists': instance.artists,
    };

MoreInfo _$MoreInfoFromJson(Map<String, dynamic> json) => MoreInfo(
      query: json['query'] as String,
      text: json['text'] as String,
      music: json['music'] as String?,
      songCount: json['song_count'] as String,
      artistMap: json['artist_map'] == null
          ? null
          : ArtistMap.fromJson(json['artist_map'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoreInfoToJson(MoreInfo instance) => <String, dynamic>{
      'query': instance.query,
      'text': instance.text,
      'music': instance.music,
      'song_count': instance.songCount,
      'artist_map': instance.artistMap,
    };
