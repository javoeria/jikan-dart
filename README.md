# jikan_api

[Jikan](https://jikan.moe/) is an **Unofficial** MyAnimeList API. It scrapes the website to satisfy the need for a complete API - which MyAnimeList lacks.

[![Build Status](https://github.com/javoeria/jikan-dart/actions/workflows/dart.yml/badge.svg?branch=master)](https://github.com/javoeria/jikan-dart/actions/workflows/dart.yml)
[![pub package](https://img.shields.io/pub/v/jikan_api.svg)](https://pub.dev/packages/jikan_api)

### Anime

```dart
Future<Anime> getAnime(int id);
Future<BuiltList<CharacterMeta>> getAnimeCharacters(int id);
Future<BuiltList<PersonMeta>> getAnimeStaff(int id);
Future<BuiltList<Episode>> getAnimeEpisodes(int id, {int page = 1});
Future<BuiltList<Article>> getAnimeNews(int id, {int page = 1});
Future<BuiltList<Forum>> getAnimeForum(int id, {ForumType? type});
Future<BuiltList<Promo>> getAnimeVideos(int id);
Future<BuiltList<Picture>> getAnimePictures(int id);
Future<Stats> getAnimeStatistics(int id);
Future<String> getAnimeMoreInfo(int id);
Future<BuiltList<Recommendation>> getAnimeRecommendations(int id);
Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int id, {int page = 1});
Future<BuiltList<Review>> getAnimeReviews(int id, {int page = 1});
```

### Manga

```dart
Future<Manga> getManga(int id);
Future<BuiltList<CharacterMeta>> getMangaCharacters(int id);
Future<BuiltList<Article>> getMangaNews(int id, {int page = 1});
Future<BuiltList<Forum>> getMangaForum(int id, {ForumType? type});
Future<BuiltList<Picture>> getMangaPictures(int id);
Future<Stats> getMangaStatistics(int id);
Future<String> getMangaMoreInfo(int id);
Future<BuiltList<Recommendation>> getMangaRecommendations(int id);
Future<BuiltList<UserUpdate>> getMangaUserUpdates(int id, {int page = 1});
Future<BuiltList<Review>> getMangaReviews(int id, {int page = 1});
```

### People

```dart
Future<Person> getPerson(int id);
Future<BuiltList<Picture>> getPersonPictures(int id);
```

### Characters

```dart
Future<Character> getCharacter(int id);
Future<BuiltList<Picture>> getCharacterPictures(int id);
```

### Search

```dart
Future<BuiltList<Anime>> searchAnime(
    {String? query, AnimeType? type, List<int>? genres, List<int>? producers, String? orderBy, String? sort, int page = 1});
Future<BuiltList<Manga>> searchManga(
    {String? query, MangaType? type, List<int>? genres, List<int>? magazines, String? orderBy, String? sort, int page = 1});
Future<BuiltList<Person>> searchPeople({String? query, String? orderBy, String? sort, int page = 1});
Future<BuiltList<Character>> searchCharacters({String? query, String? orderBy, String? sort, int page = 1});
```

### Seasons

```dart
Future<BuiltList<Anime>> getSeason({int? year, SeasonType? season, int page = 1});
Future<BuiltList<Anime>> getSeasonUpcoming({int page = 1});
Future<BuiltList<Archive>> getSeasonsList();
```

### Schedules

```dart
Future<BuiltList<Anime>> getSchedules({WeekDay? weekday, int page = 1});
```

### Top

```dart
Future<BuiltList<Anime>> getTopAnime({AnimeType? type, TopFilter? filter, int page = 1});
Future<BuiltList<Manga>> getTopManga({MangaType? type, TopFilter? filter, int page = 1});
Future<BuiltList<Person>> getTopPeople({int page = 1});
Future<BuiltList<Character>> getTopCharacters({int page = 1});
Future<BuiltList<UserReview>> getTopReviews({int page = 1});
```

### Genres

```dart
Future<BuiltList<Genre>> getAnimeGenres({GenreType? type});
Future<BuiltList<Genre>> getMangaGenres({GenreType? type});
```

### Producers

```dart
Future<BuiltList<Producer>> getProducers({String? query, String? orderBy, String? sort, int page = 1});
```

### Magazines

```dart
Future<BuiltList<Magazine>> getMagazines({String? query, String? orderBy, String? sort, int page = 1});
```

### Users

```dart
Future<UserProfile> getUserProfile(String username);
Future<BuiltList<History>> getUserHistory(String username, {HistoryType? type});
Future<BuiltList<Friend>> getUserFriends(String username, {int page = 1});
Future<BuiltList<UserReview>> getUserReviews(String username, {int page = 1});
Future<BuiltList<UserRecommendation>> getUserRecommendations(String username, {int page = 1});
```

### Reviews

```dart
Future<BuiltList<UserReview>> getRecentAnimeReviews({int page = 1});
Future<BuiltList<UserReview>> getRecentMangaReviews({int page = 1});
```

### Recommendations

```dart
Future<BuiltList<UserRecommendation>> getRecentAnimeRecommendations({int page = 1});
Future<BuiltList<UserRecommendation>> getRecentMangaRecommendations({int page = 1});
```

### Watch

```dart
Future<BuiltList<WatchEpisode>> getWatchEpisodes({bool popular = false});
Future<BuiltList<WatchPromo>> getWatchPromos({bool popular = false});
```
