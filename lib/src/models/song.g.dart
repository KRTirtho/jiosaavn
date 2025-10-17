// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongSearchRequest _$SongSearchRequestFromJson(Map<String, dynamic> json) =>
    SongSearchRequest(
      total: (json['total'] as num).toInt(),
      start: (json['start'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongSearchRequestToJson(SongSearchRequest instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

SongRequest _$SongRequestFromJson(Map<String, dynamic> json) => SongRequest(
  id: json['id'] as String,
  type: json['type'] as String,
  song: json['song'] as String,
  album: json['album'] as String,
  year: json['year'] as String,
  music: json['music'] as String,
  musicId: json['music_id'] as String?,
  primaryArtists: json['primary_artists'] as String,
  primaryArtistsId: json['primary_artists_id'] as String,
  featuredArtists: json['featured_artists'] as String,
  featuredArtistsId: json['featured_artists_id'] as String,
  singers: json['singers'] as String,
  starring: json['starring'] as String?,
  image: json['image'] as String,
  label: json['label'] as String,
  albumId: json['albumid'] as String,
  language: json['language'] as String,
  origin: json['origin'] as String,
  playCount: SongRequest._toString(json['play_count']),
  copyrightText: json['copyright_text'] as String,
  kbps320: json['320kbps'] as String,
  isDolbyContent: json['is_dolby_content'] as bool,
  explicitContent: (json['explicit_content'] as num).toInt(),
  hasLyrics: json['has_lyrics'] as String,
  lyricsSnippet: json['lyrics_snippet'] as String,
  encryptedMediaUrl: json['encrypted_media_url'] as String,
  encryptedMediaPath: SongRequest._toString(json['encrypted_media_path']),
  mediaPreviewUrl: json['media_preview_url'] as String?,
  permaUrl: json['perma_url'] as String,
  albumUrl: json['album_url'] as String,
  duration: json['duration'] as String,
  artistMap: ArtistMap.fromJson(json['artistMap'] as Map<String, dynamic>),
  rights: Rights.fromJson(json['rights'] as Map<String, dynamic>),
  webp: json['webp'] as bool?,
  cacheState: json['cache_state'] as String?,
  starred: json['starred'] as String,
  releaseDate: json['release_date'],
  vcode: json['vcode'] as String?,
  vlink: json['vlink'] as String?,
  trillerAvailable: json['triller_available'] as bool,
  labelUrl: json['label_url'] as String,
);

Map<String, dynamic> _$SongRequestToJson(SongRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'song': instance.song,
      'album': instance.album,
      'year': instance.year,
      'music': instance.music,
      'music_id': instance.musicId,
      'primary_artists': instance.primaryArtists,
      'primary_artists_id': instance.primaryArtistsId,
      'featured_artists': instance.featuredArtists,
      'featured_artists_id': instance.featuredArtistsId,
      'singers': instance.singers,
      'starring': instance.starring,
      'image': instance.image,
      'label': instance.label,
      'albumid': instance.albumId,
      'language': instance.language,
      'origin': instance.origin,
      'play_count': instance.playCount,
      'copyright_text': instance.copyrightText,
      '320kbps': instance.kbps320,
      'is_dolby_content': instance.isDolbyContent,
      'explicit_content': instance.explicitContent,
      'has_lyrics': instance.hasLyrics,
      'lyrics_snippet': instance.lyricsSnippet,
      'encrypted_media_url': instance.encryptedMediaUrl,
      'encrypted_media_path': instance.encryptedMediaPath,
      'media_preview_url': instance.mediaPreviewUrl,
      'perma_url': instance.permaUrl,
      'album_url': instance.albumUrl,
      'duration': instance.duration,
      'artistMap': instance.artistMap,
      'rights': instance.rights,
      'webp': instance.webp,
      'cache_state': instance.cacheState,
      'starred': instance.starred,
      'release_date': instance.releaseDate,
      'vcode': instance.vcode,
      'vlink': instance.vlink,
      'triller_available': instance.trillerAvailable,
      'label_url': instance.labelUrl,
    };

Rights _$RightsFromJson(Map<String, dynamic> json) => Rights(
  code: Rights._fromIntOrString(json['code']),
  reason: json['reason'] as String,
  cacheable: SongRequest._fromBoolOrString(json['cacheable']),
  deleteCachedObject: SongRequest._fromBoolOrString(
    json['delete_cached_object'],
  ),
);

Map<String, dynamic> _$RightsToJson(Rights instance) => <String, dynamic>{
  'code': instance.code,
  'reason': instance.reason,
  'cacheable': instance.cacheable,
  'delete_cached_object': instance.deleteCachedObject,
};

SongSearchResponse _$SongSearchResponseFromJson(Map<String, dynamic> json) =>
    SongSearchResponse(
      total: (json['total'] as num).toInt(),
      start: (json['start'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => SongResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongSearchResponseToJson(SongSearchResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

SongResponse _$SongResponseFromJson(Map<String, dynamic> json) => SongResponse(
  id: json['id'] as String,
  name: json['name'] as String?,
  type: json['type'] as String,
  album: SongResponseAlbum.fromJson(json['album'] as Map<String, dynamic>),
  year: json['year'] as String,
  releaseDate: json['release_date'] as String,
  duration: json['duration'] as String,
  label: json['label'] as String,
  primaryArtists: json['primary_artists'] as String,
  primaryArtistsId: json['primary_artists_id'] as String,
  featuredArtists: json['featured_artists'] as String,
  featuredArtistsId: json['featured_artists_id'] as String,
  explicitContent: (json['explicit_content'] as num).toInt(),
  playCount: json['play_count'] as String?,
  language: json['language'] as String,
  hasLyrics: json['has_lyrics'] as String,
  url: json['url'] as String,
  copyright: json['copyright'] as String,
  image: (json['image'] as List<dynamic>?)
      ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
      .toList(),
  downloadUrl: (json['download_links'] as List<dynamic>?)
      ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SongResponseToJson(SongResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'album': instance.album,
      'year': instance.year,
      'release_date': instance.releaseDate,
      'duration': instance.duration,
      'label': instance.label,
      'primary_artists': instance.primaryArtists,
      'primary_artists_id': instance.primaryArtistsId,
      'featured_artists': instance.featuredArtists,
      'featured_artists_id': instance.featuredArtistsId,
      'explicit_content': instance.explicitContent,
      'play_count': instance.playCount,
      'language': instance.language,
      'has_lyrics': instance.hasLyrics,
      'url': instance.url,
      'copyright': instance.copyright,
      'image': instance.image,
      'download_links': instance.downloadUrl,
    };

SongResponseAlbum _$SongResponseAlbumFromJson(Map<String, dynamic> json) =>
    SongResponseAlbum(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SongResponseAlbumToJson(SongResponseAlbum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
