import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class DownloadLink {
  String quality;
  String link;

  DownloadLink({required this.quality, required this.link});

  factory DownloadLink.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinkFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadLinkToJson(this);
}
