// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistSearchRequest _$ArtistSearchRequestFromJson(Map<String, dynamic> json) =>
    ArtistSearchRequest(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ArtistRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistSearchRequestToJson(
        ArtistSearchRequest instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

ArtistSearchResponse _$ArtistSearchResponseFromJson(
        Map<String, dynamic> json) =>
    ArtistSearchResponse(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ArtistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistSearchResponseToJson(
        ArtistSearchResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

ArtistSongResponse _$ArtistSongResponseFromJson(Map<String, dynamic> json) =>
    ArtistSongResponse(
      total: json['total'] as int,
      lastPage: json['last_page'] as bool,
      results: (json['results'] as List<dynamic>)
          .map((e) => SongResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistSongResponseToJson(ArtistSongResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'results': instance.results,
    };

ArtistAlbumResponse _$ArtistAlbumResponseFromJson(Map<String, dynamic> json) =>
    ArtistAlbumResponse(
      total: json['total'] as int,
      lastPage: json['last_page'] as bool,
      results: (json['results'] as List<dynamic>)
          .map((e) => AlbumResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistAlbumResponseToJson(
        ArtistAlbumResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'results': instance.results,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      id: json['id'] as String?,
      name: json['name'] as String,
      image: json['image'] as String?,
      role: json['role'] as String?,
      permaUrl: json['perma_url'] as String?,
      type: json['type'] as String,
      miniObj: json['mini_obj'] as bool?,
      ctr: (json['ctr'] as num?)?.toDouble(),
      entity: json['entity'] as int?,
      isRadioPresent: json['is_radio_present'] as bool?,
      isFollowed: json['is_followed'] as bool?,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ctr': instance.ctr,
      'entity': instance.entity,
      'image': instance.image,
      'role': instance.role,
      'perma_url': instance.permaUrl,
      'type': instance.type,
      'mini_obj': instance.miniObj,
      'is_radio_present': instance.isRadioPresent,
      'is_followed': instance.isFollowed,
    };

ArtistSongRequest _$ArtistSongRequestFromJson(Map<String, dynamic> json) =>
    ArtistSongRequest(
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      lastPage: json['last_page'] as bool,
    );

Map<String, dynamic> _$ArtistSongRequestToJson(ArtistSongRequest instance) =>
    <String, dynamic>{
      'songs': instance.songs,
      'total': instance.total,
      'last_page': instance.lastPage,
    };

ArtistAlbumRequest _$ArtistAlbumRequestFromJson(Map<String, dynamic> json) =>
    ArtistAlbumRequest(
      albums: (json['albums'] as List<dynamic>)
          .map((e) => AlbumRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      lastPage: json['last_page'] as bool,
    );

Map<String, dynamic> _$ArtistAlbumRequestToJson(ArtistAlbumRequest instance) =>
    <String, dynamic>{
      'albums': instance.albums,
      'total': instance.total,
      'last_page': instance.lastPage,
    };

ArtistUrls _$ArtistUrlsFromJson(Map<String, dynamic> json) => ArtistUrls(
      albums: json['albums'] as String,
      bio: json['bio'] as String,
      comments: json['comments'] as String,
      songs: json['songs'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$ArtistUrlsToJson(ArtistUrls instance) =>
    <String, dynamic>{
      'albums': instance.albums,
      'bio': instance.bio,
      'comments': instance.comments,
      'songs': instance.songs,
      'overview': instance.overview,
    };

ArtistRequest _$ArtistRequestFromJson(Map<String, dynamic> json) =>
    ArtistRequest(
      artistId: json['artistId'] as String?,
      subtitle: json['subtitle'] as String?,
      followerCount: json['follower_count'] as String?,
      isVerified: json['is_verified'] as bool?,
      dominantLanguage: json['dominantLanguage'] as String?,
      dominantType: json['dominantType'] as String?,
      topSongs: ArtistRequest._fromTopSongs(json['topSongs'] as List?),
      topAlbums: (json['topAlbums'] as List<dynamic>?)
          ?.map((e) => AlbumRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      bio: json['bio'] as String?,
      dob: json['dob'] as String?,
      fb: json['fb'] as String?,
      twitter: json['twitter'] as String?,
      wiki: json['wiki'] as String?,
      urls: json['urls'] == null
          ? null
          : ArtistUrls.fromJson(json['urls'] as Map<String, dynamic>),
      availableLanguages: (json['availableLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fanCount: json['fan_count'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String,
      ctr: (json['ctr'] as num?)?.toDouble(),
      entity: json['entity'] as int?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      permaUrl: json['perma_url'] as String?,
      type: json['type'] as String,
      miniObj: json['mini_obj'] as bool?,
      isRadioPresent: json['is_radio_present'] as bool?,
      isFollowed: json['is_followed'] as bool?,
    );

Map<String, dynamic> _$ArtistRequestToJson(ArtistRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ctr': instance.ctr,
      'entity': instance.entity,
      'image': instance.image,
      'role': instance.role,
      'perma_url': instance.permaUrl,
      'type': instance.type,
      'mini_obj': instance.miniObj,
      'is_radio_present': instance.isRadioPresent,
      'is_followed': instance.isFollowed,
      'artistId': instance.artistId,
      'subtitle': instance.subtitle,
      'follower_count': instance.followerCount,
      'is_verified': instance.isVerified,
      'dominantLanguage': instance.dominantLanguage,
      'dominantType': instance.dominantType,
      'topSongs': instance.topSongs,
      'topAlbums': instance.topAlbums,
      'bio': instance.bio,
      'dob': instance.dob,
      'fb': instance.fb,
      'twitter': instance.twitter,
      'wiki': instance.wiki,
      'urls': instance.urls,
      'availableLanguages': instance.availableLanguages,
      'fan_count': instance.fanCount,
    };

ArtistResponse _$ArtistResponseFromJson(Map<String, dynamic> json) =>
    ArtistResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String?,
      role: json['role'] as String?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      followerCount: json['follower_count'] as String?,
      fanCount: json['fan_count'] as String?,
      isVerified: json['is_verified'] as bool?,
      dominantLanguage: json['dominantLanguage'] as String?,
      dominantType: json['dominantType'] as String?,
      bio: json['bio'] as String?,
      dob: json['dob'] as String?,
      fb: json['fb'] as String?,
      twitter: json['twitter'] as String?,
      wiki: json['wiki'] as String?,
      availableLanguages: (json['availableLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isRadioPresent: json['is_radio_present'] as bool?,
    );

Map<String, dynamic> _$ArtistResponseToJson(ArtistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'role': instance.role,
      'image': instance.image,
      'follower_count': instance.followerCount,
      'fan_count': instance.fanCount,
      'is_verified': instance.isVerified,
      'dominantLanguage': instance.dominantLanguage,
      'dominantType': instance.dominantType,
      'bio': instance.bio,
      'dob': instance.dob,
      'fb': instance.fb,
      'twitter': instance.twitter,
      'wiki': instance.wiki,
      'availableLanguages': instance.availableLanguages,
      'is_radio_present': instance.isRadioPresent,
    };
