import 'package:jiosaavn/src/models/album.dart';
import 'package:jiosaavn/src/models/image.dart';
import 'package:jiosaavn/src/models/song.dart';
import 'package:jiosaavn/src/utils/link.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artist.g.dart';

@JsonSerializable()
class ArtistSearchRequest {
  int total;
  int start;
  List<ArtistRequest> results;

  ArtistSearchRequest(
      {required this.total, required this.start, required this.results});

  factory ArtistSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtistSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSearchRequestToJson(this);
}

@JsonSerializable()
class ArtistSearchResponse {
  int total;
  int start;
  List<ArtistResponse> results;

  ArtistSearchResponse(
      {required this.total, required this.start, required this.results});

  factory ArtistSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSearchResponseToJson(this);
}

@JsonSerializable()
class ArtistSongResponse {
  int total;

  @JsonKey(name: "last_page")
  bool lastPage;
  List<SongResponse> results;

  ArtistSongResponse(
      {required this.total, required this.lastPage, required this.results});

  factory ArtistSongResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistSongResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSongResponseToJson(this);
}

@JsonSerializable()
class ArtistAlbumResponse {
  int total;

  @JsonKey(name: "last_page")
  bool lastPage;
  List<AlbumResponse> results;

  ArtistAlbumResponse(
      {required this.total, required this.lastPage, required this.results});

  factory ArtistAlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistAlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistAlbumResponseToJson(this);
}

@JsonSerializable()
class Artist {
  String? id;
  String name;
  double? ctr;
  int? entity;
  String? image;
  String? role;

  @JsonKey(name: "perma_url")
  String? permaUrl;
  String type;

  @JsonKey(name: "mini_obj")
  bool? miniObj;

  @JsonKey(name: "is_radio_present")
  bool? isRadioPresent;

  @JsonKey(name: "is_followed")
  bool? isFollowed;

  Artist({
    this.id,
    required this.name,
    this.image,
    this.role,
    this.permaUrl,
    required this.type,
    this.miniObj,
    this.ctr,
    this.entity,
    this.isRadioPresent,
    this.isFollowed,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class ArtistSongRequest {
  List<SongRequest> songs;
  int total;

  @JsonKey(name: "last_page")
  bool lastPage;

  ArtistSongRequest(
      {required this.songs, required this.total, required this.lastPage});

  factory ArtistSongRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtistSongRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistSongRequestToJson(this);
}

@JsonSerializable()
class ArtistAlbumRequest {
  List<AlbumRequest> albums;
  int total;

  @JsonKey(name: "last_page")
  bool lastPage;

  ArtistAlbumRequest(
      {required this.albums, required this.total, required this.lastPage});

  factory ArtistAlbumRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtistAlbumRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistAlbumRequestToJson(this);
}

@JsonSerializable()
class ArtistUrls {
  String albums;
  String bio;
  String comments;
  String songs;
  String overview;

  ArtistUrls({
    required this.albums,
    required this.bio,
    required this.comments,
    required this.songs,
    required this.overview,
  });

  factory ArtistUrls.fromJson(Map<String, dynamic> json) =>
      _$ArtistUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistUrlsToJson(this);
}

@JsonSerializable()
class ArtistRequest extends Artist {
  String? artistId;
  String? subtitle;

  @JsonKey(name: "follower_count")
  String? followerCount;

  @JsonKey(name: "is_verified")
  bool? isVerified;

  String? dominantLanguage;

  String? dominantType;

  static List<SongRequest>? _fromTopSongs(List? topSongs) {
    return topSongs
        ?.map((song) => SongRequest.fromArtistTopSong(song))
        .toList()
        .cast<SongRequest>();
  }

  @JsonKey(fromJson: ArtistRequest._fromTopSongs)
  List<SongRequest>? topSongs;

  List<AlbumRequest>? topAlbums;

  String? bio;
  String? dob;
  String? fb;
  String? twitter;
  String? wiki;
  ArtistUrls? urls;

  List<String>? availableLanguages;

  @JsonKey(name: "fan_count")
  String? fanCount;

  ArtistRequest({
    this.artistId,
    this.subtitle,
    this.followerCount,
    this.isVerified,
    this.dominantLanguage,
    this.dominantType,
    this.topSongs,
    this.topAlbums,
    this.bio,
    this.dob,
    this.fb,
    this.twitter,
    this.wiki,
    this.urls,
    this.availableLanguages,
    this.fanCount,
    required super.id,
    required super.name,
    required super.ctr,
    required super.entity,
    required super.image,
    required super.role,
    super.permaUrl,
    required super.type,
    required super.miniObj,
    required super.isRadioPresent,
    required super.isFollowed,
  });

  factory ArtistRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistRequestToJson(this);
}

@JsonSerializable()
class ArtistResponse {
  String id;
  String name;
  String? url;
  String? role;
  List<DownloadLink>? image;

  @JsonKey(name: "follower_count")
  String? followerCount;

  @JsonKey(name: "fan_count")
  String? fanCount;

  @JsonKey(name: "is_verified")
  bool? isVerified;

  String? dominantLanguage;
  String? dominantType;

  String? bio;
  String? dob;
  String? fb;
  String? twitter;
  String? wiki;

  List<String>? availableLanguages;

  @JsonKey(name: "is_radio_present")
  bool? isRadioPresent;

  ArtistResponse({
    required this.id,
    required this.name,
    this.url,
    this.role,
    this.image,
    this.followerCount,
    this.fanCount,
    this.isVerified,
    this.dominantLanguage,
    this.dominantType,
    this.bio,
    this.dob,
    this.fb,
    this.twitter,
    this.wiki,
    this.availableLanguages,
    this.isRadioPresent,
  });

  factory ArtistResponse.fromArtistRequest(ArtistRequest artist) {
    return ArtistResponse(
      id: (artist.artistId ?? artist.id) as String,
      name: artist.name,
      url: artist.urls?.overview.isNotEmpty == true
          ? artist.urls!.overview
          : artist.permaUrl,
      role: artist.role,
      image: createImageLinks(artist.image),
      followerCount: artist.followerCount,
      fanCount: artist.fanCount,
      isVerified: artist.isVerified,
      dominantLanguage: artist.dominantLanguage,
      dominantType: artist.dominantType,
      bio: artist.bio, // this can be JSON
      dob: artist.dob,
      fb: artist.fb,
      twitter: artist.twitter,
      wiki: artist.wiki,
      availableLanguages: artist.availableLanguages,
      isRadioPresent: artist.isRadioPresent,
    );
  }

  factory ArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistResponseToJson(this);
}
