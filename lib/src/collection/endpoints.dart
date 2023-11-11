const endpoints = (
  modules: 'content.getBrowseModules',
  search: (
    all: 'autocomplete.get',
    songs: 'search.getResults',
    albums: 'search.getAlbumResults',
    artists: 'search.getArtistResults',
    playlists: 'search.getPlaylistResults',
  ),
  songs: (id: 'song.getDetails',),
  albums: (id: 'content.getAlbumDetails',),
  playlists: (id: 'playlist.getDetails',),
  artists: (
    id: 'artist.getArtistPageDetails',
    songs: 'artist.getArtistMoreSong',
    albums: 'artist.getArtistMoreAlbum',
    topSongs: 'search.artistOtherTopSongs',
  ),
  lyrics: 'lyrics.getLyrics',
);
