import 'package:jiosaavn/src/models/image.dart';
import 'package:jiosaavn/src/models/song.dart';
import 'package:json_annotation/json_annotation.dart';
part 'playlist.g.dart';

@JsonSerializable()
class PlaylistSearchRequest {
  PlaylistSearchRequest({
    required this.total,
    required this.start,
    required this.results,
  });

  final int total;
  final int start;
  final List<PlaylistRequest> results;

  factory PlaylistSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistSearchRequestToJson(this);
}

@JsonSerializable()
class PlaylistRequest extends Playlist {
  PlaylistRequest({
    required this.artistName,
    required this.count,
    required this.language,
    required this.entityType,
    required this.entitySubType,
    required this.numsongs,
    required super.artists,
    required super.listid,
    required super.listname,
    required super.permaUrl,
    required super.followerCount,
    required super.uid,
    required super.lastUpdated,
    required super.username,
    required super.firstname,
    required super.lastname,
    required super.isFollowed,
    required super.isFY,
    required super.image,
    required super.share,
    required super.songs,
    required super.type,
    required super.listCount,
    required super.fanCount,
    required super.h2,
    required super.isDolbyPlaylist,
    required super.subheading,
    required super.subTypes,
    required super.images,
    required super.videoAvailable,
    required super.videoCount,
  });

  @JsonKey(name: 'artist_name')
  final List<String> artistName;

  @JsonKey(name: 'count')
  final String count;

  @JsonKey(name: 'language')
  final String language;

  @JsonKey(name: 'entity_type')
  final String entityType;

  @JsonKey(name: 'entity_sub_type')
  final String entitySubType;

  @JsonKey(name: 'numsongs')
  final dynamic numsongs;

  factory PlaylistRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaylistRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaylistRequestToJson(this);
}

@JsonSerializable()
class PlaylistSearchResponse {
  PlaylistSearchResponse({
    required this.total,
    required this.start,
    required this.results,
  });

  final int total;
  final int start;
  final List<PlaylistResponse> results;

  factory PlaylistSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistSearchResponseToJson(this);
}

@JsonSerializable()
class PlaylistResponse {
  PlaylistResponse({
    required this.id,
    required this.userId,
    required this.name,
    required this.songCount,
    required this.fanCount,
    required this.followerCount,
    required this.username,
    required this.firstname,
    required this.language,
    required this.lastname,
    required this.shares,
    required this.image,
    required this.url,
    required this.songs,
  });

  final String id;
  final String userId;
  final String name;

  @JsonKey(name: 'song_count')
  final String songCount;

  @JsonKey(name: 'fan_count')
  final String fanCount;

  @JsonKey(name: 'follower_count')
  final String followerCount;

  final String username;
  final String firstname;
  final String language;
  final String lastname;
  final String shares;
  final List<DownloadLink> image;
  final String url;
  final List<SongResponse> songs;

  factory PlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistResponseToJson(this);
}

@JsonSerializable()
class Playlist {
  Playlist({
    required this.artists,
    required this.listid,
    required this.listname,
    required this.permaUrl,
    required this.followerCount,
    required this.uid,
    required this.lastUpdated,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.isFollowed,
    required this.isFY,
    required this.image,
    required this.share,
    required this.songs,
    required this.type,
    required this.listCount,
    required this.fanCount,
    required this.h2,
    required this.isDolbyPlaylist,
    required this.subheading,
    required this.subTypes,
    required this.images,
    required this.videoAvailable,
    required this.videoCount,
  });

  final List<dynamic> artists;
  final String listid;

  @JsonKey(name: 'listname')
  final String listname;

  @JsonKey(name: 'perma_url')
  final String permaUrl;

  @JsonKey(name: 'follower_count')
  final String followerCount;

  final String uid;

  @JsonKey(name: 'last_updated')
  final String lastUpdated;

  final String username;
  final String firstname;
  final String lastname;

  @JsonKey(name: 'is_followed')
  final String isFollowed;

  @JsonKey(name: 'isFY')
  final bool isFY;

  final String image;
  final String share;
  final List<SongRequest> songs;
  final String type;

  @JsonKey(name: 'list_count')
  final String listCount;

  @JsonKey(name: 'fan_count')
  final int fanCount;

  @JsonKey(name: 'H2')
  final dynamic h2;

  @JsonKey(name: 'is_dolby_playlist')
  final bool isDolbyPlaylist;

  final dynamic subheading;

  @JsonKey(name: 'sub_types')
  final List<dynamic> subTypes;

  final List<dynamic> images;

  @JsonKey(name: 'video_available')
  final bool videoAvailable;

  @JsonKey(name: 'video_count')
  final int videoCount;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);
}
