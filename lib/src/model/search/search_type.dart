enum SearchType { anime, manga, person, character }

String searchTypeToString(SearchType type) {
  switch (type) {
    case SearchType.anime:
      return 'anime';
    case SearchType.manga:
      return 'manga';
    case SearchType.person:
      return 'person';
    case SearchType.character:
      return 'character';
    default:
      return '';
  }
}
