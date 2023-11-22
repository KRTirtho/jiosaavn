// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistSearchRequest _$PlaylistSearchRequestFromJson(
        Map<String, dynamic> json) =>
    PlaylistSearchRequest(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => PlaylistRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistSearchRequestToJson(
        PlaylistSearchRequest instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

PlaylistRequest _$PlaylistRequestFromJson(Map<String, dynamic> json) =>
    PlaylistRequest(
      artistName: (json['artist_name'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      count: json['count'] as String,
      language: json['language'] as String,
      entityType: json['entity_type'] as String,
      entitySubType: json['entity_sub_type'] as String,
      numsongs: json['numsongs'],
      artists: json['artists'] as List<dynamic>,
      listid: json['listid'] as String,
      listname: json['listname'] as String,
      permaUrl: json['perma_url'] as String,
      followerCount: json['follower_count'] as String,
      uid: json['uid'] as String,
      lastUpdated: json['last_updated'] as String,
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      isFollowed: json['is_followed'] as String,
      isFY: json['isFY'] as bool,
      image: json['image'] as String,
      share: json['share'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      listCount: json['list_count'] as String,
      fanCount: json['fan_count'] as int,
      h2: json['H2'],
      isDolbyPlaylist: json['is_dolby_playlist'] as bool,
      subheading: json['subheading'],
      subTypes: json['sub_types'] as List<dynamic>,
      images: json['images'] as List<dynamic>,
      videoAvailable: json['video_available'] as bool,
      videoCount: json['video_count'] as int,
    );

Map<String, dynamic> _$PlaylistRequestToJson(PlaylistRequest instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'listid': instance.listid,
      'listname': instance.listname,
      'perma_url': instance.permaUrl,
      'follower_count': instance.followerCount,
      'uid': instance.uid,
      'last_updated': instance.lastUpdated,
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'is_followed': instance.isFollowed,
      'isFY': instance.isFY,
      'image': instance.image,
      'share': instance.share,
      'songs': instance.songs,
      'type': instance.type,
      'list_count': instance.listCount,
      'fan_count': instance.fanCount,
      'H2': instance.h2,
      'is_dolby_playlist': instance.isDolbyPlaylist,
      'subheading': instance.subheading,
      'sub_types': instance.subTypes,
      'images': instance.images,
      'video_available': instance.videoAvailable,
      'video_count': instance.videoCount,
      'artist_name': instance.artistName,
      'count': instance.count,
      'language': instance.language,
      'entity_type': instance.entityType,
      'entity_sub_type': instance.entitySubType,
      'numsongs': instance.numsongs,
    };

PlaylistSearchResponse _$PlaylistSearchResponseFromJson(
        Map<String, dynamic> json) =>
    PlaylistSearchResponse(
      total: json['total'] as int,
      start: json['start'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => PlaylistResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistSearchResponseToJson(
        PlaylistSearchResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'start': instance.start,
      'results': instance.results,
    };

PlaylistResponse _$PlaylistResponseFromJson(Map<String, dynamic> json) =>
    PlaylistResponse(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      songCount: json['song_count'] as String,
      fanCount: json['fan_count'] as String,
      followerCount: json['follower_count'] as String,
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      language: json['language'] as String,
      lastname: json['lastname'] as String,
      shares: json['shares'] as String,
      image: (json['image'] as List<dynamic>)
          .map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistResponseToJson(PlaylistResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'song_count': instance.songCount,
      'fan_count': instance.fanCount,
      'follower_count': instance.followerCount,
      'username': instance.username,
      'firstname': instance.firstname,
      'language': instance.language,
      'lastname': instance.lastname,
      'shares': instance.shares,
      'image': instance.image,
      'url': instance.url,
      'songs': instance.songs,
    };

Playlist _$PlaylistFromJson(Map<String, dynamic> json) => Playlist(
      artists: json['artists'] as List<dynamic>,
      listid: json['listid'] as String,
      listname: json['listname'] as String,
      permaUrl: json['perma_url'] as String,
      followerCount: json['follower_count'] as String,
      uid: json['uid'] as String,
      lastUpdated: json['last_updated'] as String,
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      isFollowed: json['is_followed'] as String,
      isFY: json['isFY'] as bool,
      image: json['image'] as String,
      share: json['share'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      listCount: json['list_count'] as String,
      fanCount: json['fan_count'] as int,
      h2: json['H2'],
      isDolbyPlaylist: json['is_dolby_playlist'] as bool,
      subheading: json['subheading'],
      subTypes: json['sub_types'] as List<dynamic>,
      images: json['images'] as List<dynamic>,
      videoAvailable: json['video_available'] as bool,
      videoCount: json['video_count'] as int,
    );

Map<String, dynamic> _$PlaylistToJson(Playlist instance) => <String, dynamic>{
      'artists': instance.artists,
      'listid': instance.listid,
      'listname': instance.listname,
      'perma_url': instance.permaUrl,
      'follower_count': instance.followerCount,
      'uid': instance.uid,
      'last_updated': instance.lastUpdated,
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'is_followed': instance.isFollowed,
      'isFY': instance.isFY,
      'image': instance.image,
      'share': instance.share,
      'songs': instance.songs,
      'type': instance.type,
      'list_count': instance.listCount,
      'fan_count': instance.fanCount,
      'H2': instance.h2,
      'is_dolby_playlist': instance.isDolbyPlaylist,
      'subheading': instance.subheading,
      'sub_types': instance.subTypes,
      'images': instance.images,
      'video_available': instance.videoAvailable,
      'video_count': instance.videoCount,
    };
