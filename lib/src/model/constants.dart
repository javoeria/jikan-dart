const String baseUrl = 'https://api.jikan.moe/v4';

enum AnimeType { tv, movie, ova, ona, special, music }

enum MangaType { manga, novel, lightnovel, oneshot, doujin, manhwa, manhua }

enum SeasonType { winter, spring, summer, fall }

enum ForumType { all, episode, other }

enum GenreType { genres, explicit_genres, themes, demographics }

enum HistoryType { anime, manga }

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

enum TopFilter { airing, publishing, upcoming, bypopularity, favorite }

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
