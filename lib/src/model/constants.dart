const String baseUrl = 'https://api.jikan.moe/v4';

enum SeasonType { winter, spring, summer, fall }

enum ForumType { all, episode, other }

enum GenreType { anime, manga }

enum HistoryType { anime, manga }

enum SearchType { anime, manga, person, character }

enum TopType { anime, manga, people, characters }

enum TopSubtype {
  airing,
  upcoming,
  tv,
  movie,
  ova,
  ona,
  special,
  manga,
  novels,
  lightnovels,
  oneshots,
  doujin,
  manhwa,
  manhua,
  bypopularity,
  favorite,
}

enum ListType {
  all,
  completed,
  watching,
  reading,
  onhold,
  dropped,
  plantowatch,
  plantoread,
}

enum WeekDay {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  other,
  unknown,
}
