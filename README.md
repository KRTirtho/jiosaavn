# JioSaavn

[![Pub](https://img.shields.io/pub/v/jiosaavn.svg)](https://pub.dev/packages/jiosaavn)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/your-username/jiosaavn/blob/main/LICENSE)

A Dart package for interacting with the JioSaavn API.

## Features

- Search for songs, albums, playlists, and artists
- Get details of a specific song, album, playlist, or artist

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  jiosaavn: ^0.1.0
```

## Usage

```dart
// initialize the client 
final jiosaavn = JioSaavnClient();

// get details for a album
await jiosaavn.album.detailsById("1142502");

// search a song
await jiosaavn.search.songs("Malibu - Miley Cyrus");

// get song(s) details
await jiosaavn.song.detailsById(["5WXAlMNt", "csaEsVWV"])

```

## Contribution

Feel free to contribute to this project by creating issues or pull requests.


## License

This project is licensed under the MIT License