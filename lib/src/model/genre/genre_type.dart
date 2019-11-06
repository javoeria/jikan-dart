enum GenreType { anime, manga }

String genreTypeString(GenreType type) {
  switch (type) {
    case GenreType.anime:
      return 'anime';
    case GenreType.manga:
      return 'manga';
    default:
      return '';
  }
}
