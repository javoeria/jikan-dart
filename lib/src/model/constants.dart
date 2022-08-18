const String baseUrl = 'https://api.jikan.moe/v4';

enum AnimeType { tv, movie, ova, ona, special, music }

enum MangaType { manga, novel, lightnovel, oneshot, doujin, manhwa, manhua }

enum SeasonType { winter, spring, summer, fall }

enum ForumType { all, episode, other }

enum GenreType { genres, explicit_genres, themes, demographics }

enum HistoryType { anime, manga }

enum SearchType { anime, manga, person, character }

enum TopType {
  tv,
  movie,
  ova,
  ona,
  special,
  music,
  manga,
  novels,
  lightnovels,
  oneshots,
  doujin,
  manhwa,
  manhua,
}

enum TopSubtype { airing, publishing, upcoming, bypopularity, favorite }

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

// ignore_for_file: constant_identifier_names
