// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricsRequest _$LyricsRequestFromJson(Map<String, dynamic> json) =>
    LyricsRequest(
      lyrics: json['lyrics'] as String?,
      scriptTrackingUrl: json['script_tracking_url'] as String?,
      lyricsCopyRight: json['lyrics_copyright'] as String?,
      snippet: json['snippet'] as String?,
    );

Map<String, dynamic> _$LyricsRequestToJson(LyricsRequest instance) =>
    <String, dynamic>{
      'lyrics': instance.lyrics,
      'script_tracking_url': instance.scriptTrackingUrl,
      'lyrics_copyright': instance.lyricsCopyRight,
      'snippet': instance.snippet,
    };

LyricsResponse _$LyricsResponseFromJson(Map<String, dynamic> json) =>
    LyricsResponse(
      lyrics: json['lyrics'] as String?,
      snippet: json['snippet'] as String?,
      copyright: json['copyright'] as String?,
    );

Map<String, dynamic> _$LyricsResponseToJson(LyricsResponse instance) =>
    <String, dynamic>{
      'lyrics': instance.lyrics,
      'snippet': instance.snippet,
      'copyright': instance.copyright,
    };
