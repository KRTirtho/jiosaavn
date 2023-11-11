import 'package:jiosaavn/src/models/album.dart';
import 'package:jiosaavn/src/models/image.dart';
import 'package:jiosaavn/src/models/song.dart';
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
  String id;
  String name;
  double ctr;
  int entity;
  String? image;
  String role;

  @JsonKey(name: "perma_url")
  String permaUrl;
  String type;

  @JsonKey(name: "mini_obj")
  bool miniObj;

  @JsonKey(name: "is_radio_present")
  bool isRadioPresent;

  @JsonKey(name: "is_followed")
  bool isFollowed;

  Artist({
    required this.id,
    required this.name,
    required this.ctr,
    required this.entity,
    this.image,
    required this.role,
    required this.permaUrl,
    required this.type,
    required this.miniObj,
    required this.isRadioPresent,
    required this.isFollowed,
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
  String artistId;
  String subtitle;

  @JsonKey(name: "follower_count")
  String followerCount;

  @JsonKey(name: "is_verified")
  bool isVerified;

  @JsonKey(name: "dominant_language")
  String dominantLanguage;

  @JsonKey(name: "dominant_type")
  String dominantType;

  @JsonKey(name: "top_songs")
  ArtistSongRequest topSongs;

  @JsonKey(name: "top_albums")
  ArtistAlbumRequest topAlbums;
  String bio;
  String dob;
  String fb;
  String twitter;
  String wiki;
  ArtistUrls urls;

  @JsonKey(name: "available_languages")
  List<String> availableLanguages;

  @JsonKey(name: "fan_count")
  String fanCount;

  ArtistRequest({
    required this.artistId,
    required this.subtitle,
    required this.followerCount,
    required this.isVerified,
    required this.dominantLanguage,
    required this.dominantType,
    required this.topSongs,
    required this.topAlbums,
    required this.bio,
    required this.dob,
    required this.fb,
    required this.twitter,
    required this.wiki,
    required this.urls,
    required this.availableLanguages,
    required this.fanCount,
    // Other properties from the parent class
    // ...
  }) : super(
          id: "",
          name: "",
          ctr: 0,
          entity: 0,
          image: "",
          role: "",
          permaUrl: "",
          type: "",
          miniObj: false,
          isRadioPresent: false,
          isFollowed: false,
        );

  factory ArtistRequest.fromJson(Map<String, dynamic> json) =>
      _$ArtistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistRequestToJson(this);
}

@JsonSerializable()
class ArtistResponse {
  String id;
  String name;
  String url;
  String role;
  List<DownloadLink> image;

  @JsonKey(name: "follower_count")
  String followerCount;

  @JsonKey(name: "fan_count")
  String fanCount;

  @JsonKey(name: "is_verified")
  bool isVerified;

  @JsonKey(name: "dominant_language")
  String dominantLanguage;

  @JsonKey(name: "dominant_type")
  String dominantType;
  String bio;
  String dob;
  String fb;
  String twitter;
  String wiki;

  @JsonKey(name: "available_languages")
  List<String> availableLanguages;

  @JsonKey(name: "is_radio_present")
  bool isRadioPresent;

  ArtistResponse({
    required this.id,
    required this.name,
    required this.url,
    required this.role,
    required this.image,
    required this.followerCount,
    required this.fanCount,
    required this.isVerified,
    required this.dominantLanguage,
    required this.dominantType,
    required this.bio,
    required this.dob,
    required this.fb,
    required this.twitter,
    required this.wiki,
    required this.availableLanguages,
    required this.isRadioPresent,
  });

  factory ArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistResponseToJson(this);
}
