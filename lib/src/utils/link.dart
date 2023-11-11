import 'dart:convert';

import 'package:jiosaavn/src/models/image.dart';
import 'package:dart_des/dart_des.dart';

List<DownloadLink>? createDownloadLinks(String encryptedMediaUrl) {
  if (encryptedMediaUrl.isEmpty) return null;

  const qualities = [
    (id: '_12', bitrate: '12kbps'),
    (id: '_48', bitrate: '48kbps'),
    (id: '_96', bitrate: '96kbps'),
    (id: '_160', bitrate: '160kbps'),
    (id: '_320', bitrate: '320kbps'),
  ];

  const key = '38346591';

  final encrypted = base64Decode(encryptedMediaUrl);

  final decipher = DES(
    key: key.codeUnits,
    mode: DESMode.ECB,
    paddingType: DESPaddingType.PKCS7,
  );

  final decryptedLink = decipher.decrypt(encrypted);

  final links = qualities.map((quality) {
    return DownloadLink(
      quality: quality.bitrate,
      link: utf8.decode(decryptedLink).replaceAll('_96', quality.id),
    );
  }).toList();

  return links;
}

const qualities = ['50x50', '150x150', '500x500'];
List<DownloadLink>? createImageLinks(String? link) {
  if (link == null) return null;

  return qualities
      .map(
        (quality) => DownloadLink(
          quality: quality,
          link: link.contains('150x150')
              ? link.replaceAll('150x150', quality)
              : link.replaceAll('50x50', quality),
        ),
      )
      .toList();
}

String sanitizeLyrics(String lyrics) => lyrics
        .replaceAll("\"", "'")
        .replaceAll(RegExp(" {2}", caseSensitive: false), ' ')
        .split('<br>')
        .map((text) {
      if (text.isEmpty) return text;
      return text[0].toUpperCase() + text.substring(1);
    }).join('\n');
