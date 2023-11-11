import 'package:json_annotation/json_annotation.dart';

part 'lyrics.g.dart';

@JsonSerializable()
class LyricsRequest {
  String lyrics;

  @JsonKey(name: 'script_tracking_url')
  String scriptTrackingUrl;

  @JsonKey(name: 'lyrics_copyright')
  String lyricsCopyRight;
  String snippet;

  LyricsRequest(
      {required this.lyrics,
      required this.scriptTrackingUrl,
      required this.lyricsCopyRight,
      required this.snippet});

  factory LyricsRequest.fromJson(Map<String, dynamic> json) =>
      _$LyricsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LyricsRequestToJson(this);
}
