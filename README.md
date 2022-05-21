# jikan_api

[![Build Status](https://app.travis-ci.com/javoeria/jikan-dart.svg?branch=master)](https://app.travis-ci.com/javoeria/jikan-dart)
[![pub package](https://img.shields.io/pub/v/jikan_api.svg)](https://pub.dartlang.org/packages/jikan_api)

**Anime**

A single anime object with all its details.

```dart
Future<Anime> getAnimeInfo(int animeId);
Future<CharacterStaff> getAnimeCharactersStaff(int animeId);
Future<BuiltList<Episode>> getAnimeEpisodes(int animeId, {int page = 1});
Future<BuiltList<Article>> getAnimeNews(int animeId);
Future<BuiltList<Picture>> getAnimePictures(int animeId);
Future<BuiltList<Promo>> getAnimeVideos(int animeId);
Future<Stats> getAnimeStats(int animeId);
Future<BuiltList<Forum>> getAnimeForum(int animeId, {ForumType? type});
Future<String> getAnimeMoreInfo(int animeId);
Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1});
Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId);
Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int animeId, {int page = 1});
```

**Manga**

A single manga object with all its details.

```dart
Future<Manga> getMangaInfo(int mangaId);
Future<BuiltList<CharacterRole>> getMangaCharacters(int mangaId);
Future<BuiltList<Article>> getMangaNews(int mangaId);
Future<BuiltList<Picture>> getMangaPictures(int mangaId);
Future<Stats> getMangaStats(int mangaId);
Future<BuiltList<Forum>> getMangaForum(int mangaId, {ForumType? type});
Future<String> getMangaMoreInfo(int mangaId);
Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1});
Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId);
Future<BuiltList<UserUpdate>> getMangaUserUpdates(int mangaId, {int page = 1});
```

**Person**

A single person object with all its details.

```dart
Future<Person> getPersonInfo(int personId);
Future<BuiltList<Picture>> getPersonPictures(int personId);
```

**Character**

A single character object with all its details.

```dart
Future<Character> getCharacterInfo(int characterId);
Future<BuiltList<Picture>> getCharacterPictures(int characterId);
```

**Search**

Search results for the query.

Note: MyAnimeList only processes queries with a minimum of 3 letters.

```dart
Future<BuiltList<Search>> search(String query, SearchType type, {int page = 1});
```

**Season**

Anime of the specified season.

Note: Not using parameters will return the current season's anime listing.

```dart
Future<Season> getSeason({int? year, SeasonType? season});
Future<Season> getSeasonLater();
Future<BuiltList<SeasonArchive>> getSeasonArchive();
```

**Schedule**

Anime schedule of the week or specified day.

Note: If you don't pass the `weekday` parameter, it'll return the schedule for all days of the week.

```dart
Future<Schedule> getSchedule({WeekDay? weekday});
```

**Top**

Top items on MyAnimeList.

Note: `subtype` returns a filtered top list of a type `type` item.

Note 2: `subtype` is only for `anime` and `manga` types.

Note 3: Date properties are returned in string as they only consist of the month and year.

```dart
Future<BuiltList<Top>> getTop(TopType type, {TopSubtype? subtype, int page = 1});
```

**Genre**

Anime/Manga items of the genre.

Note: Genres with their respective IDs are listed [here](https://github.com/javoeria/jikan-dart/blob/master/lib/src/model/genre/genre_list.dart)

```dart
Future<Genre> getGenre(int genreId, GenreType type, {int page = 1});
```

**Producer**

Anime by this Producer/Studio/Licensor.

```dart
Future<Producer> getProducerInfo(int producerId, {int page = 1});
```

**Magazine**

Manga by this Magazine/Serializer/Publisher.

```dart
Future<Magazine> getMagazineInfo(int magazineId, {int page = 1});
```

**User**

User related data.

Note: About is returned in HTML as MyAnimeList allows custom "about" sections for users that can consist of images, formatting, etc.

```dart
Future<UserProfile> getUserProfile(String username);
Future<BuiltList<History>> getUserHistory(String username, {HistoryType? type});
Future<BuiltList<Friend>> getUserFriends(String username, {int page = 1});
```

**Club**

A single club object with all its details.

```dart
Future<Club> getClubInfo(int clubId);
Future<BuiltList<Member>> getClubMembers(int clubId, {int page = 1});
```
