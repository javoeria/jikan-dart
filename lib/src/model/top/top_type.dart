enum TopType { anime, manga, people, characters }
enum TopSubtype {
  airing,
  upcoming,
  tv,
  movie,
  ova,
  special,
  manga,
  novels,
  oneshots,
  doujin,
  manhwa,
  manhua,
  bypopularity,
  favorite
}

String topTypeToString(TopType type) {
  switch (type) {
    case TopType.anime:
      return 'anime';
    case TopType.manga:
      return 'manga';
    case TopType.people:
      return 'people';
    case TopType.characters:
      return 'characters';
    default:
      return '';
  }
}

String topSubtypeToString(TopSubtype subtype) {
  switch (subtype) {
    case TopSubtype.airing:
      return 'airing';
    case TopSubtype.upcoming:
      return 'upcoming';
    case TopSubtype.tv:
      return 'tv';
    case TopSubtype.movie:
      return 'movie';
    case TopSubtype.ova:
      return 'ova';
    case TopSubtype.special:
      return 'special';
    case TopSubtype.manga:
      return 'manga';
    case TopSubtype.novels:
      return 'novels';
    case TopSubtype.oneshots:
      return 'oneshots';
    case TopSubtype.doujin:
      return 'doujin';
    case TopSubtype.manhwa:
      return 'manhwa';
    case TopSubtype.manhua:
      return 'manhua';
    case TopSubtype.bypopularity:
      return 'bypopularity';
    case TopSubtype.favorite:
      return 'favorite';
    default:
      return '';
  }
}
