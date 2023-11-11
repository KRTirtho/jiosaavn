import 'package:json_annotation/json_annotation.dart';

part 'lyrics.g.dart';

@JsonSerializable()
class LyricsRequest {
  String? lyrics;

  @JsonKey(name: 'script_tracking_url')
  String? scriptTrackingUrl;

  @JsonKey(name: 'lyrics_copyright')
  String? lyricsCopyRight;
  String? snippet;

  LyricsRequest({
    this.lyrics,
    this.scriptTrackingUrl,
    this.lyricsCopyRight,
    this.snippet,
  });

  factory LyricsRequest.fromJson(Map<String, dynamic> json) =>
      _$LyricsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LyricsRequestToJson(this);
}

@JsonSerializable()
class LyricsResponse {
  String? lyrics;
  String? snippet;
  String? copyright;

  LyricsResponse({
    required this.lyrics,
    required this.snippet,
    required this.copyright,
  });

  factory LyricsResponse.fromJson(Map<String, dynamic> json) =>
      _$LyricsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LyricsResponseToJson(this);
}
