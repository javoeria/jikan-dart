Jikan bindings for [jikan api](https://jikan.moe/) is returns [built_value](https://github.com/google/built_value.dart) structures so you need to have it in your dependencies

Build status: ![alt text](https://travis-ci.com/javoeria/jikan-dart.svg?branch=develop)

Available API methods:

**Anime**
A single anime object with all its details

```dart
Future<AnimeInfo> getAnimeInfo(int malId);

Future<CharacterStaff> getCharacterStaff(int animeId);

Future<BuiltList<AnimeEpisode>> getAnimeEpisodes(int animeId, {int page = 1});

Future<BuiltList<Article>> getAnimeNews(int animeId);

Future<BuiltList<Picture>> getAnimePictures(int animeId);

Future<BuiltList<Promo>> getAnimeVideos(int animeId);

Future<Stats> getAnimeStats(int animeId);

Future<BuiltList<Forum>> getAnimeForum(int animeId);

Future<MoreInfo> getAnimeMoreInfo(int animeId);

Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1});

Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId);

Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int animeId, {int page = 1});
```

**Manga**
A single manga object with all its details

```dart
Future<MangaInfo> getMangaInfo(int malId);

Future<BuiltList<Character>> getMangaCharacters(int mangaId);

Future<BuiltList<Article>> getMangaNews(int mangaId);

Future<BuiltList<Picture>> getMangaPictures(int mangaId);

Future<Stats> getMangaStats(int mangaId);

Future<BuiltList<Forum>> getMangaForum(int mangaId);

Future<MoreInfo> getMangaMoreInfo(int mangaId);

Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1});

Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId);

Future<BuiltList<UserUpdate>> getMangaUserUpdates(int mangaId, {int page = 1});
```

**Person**
A single person object with all its details

```dart
Future<PersonInfo> getPersonInfo(int malId);

Future<BuiltList<Picture>> getPersonPictures(int personId);
```

**Character**
A single character object with all its details

```dart
Future<CharacterInfo> getCharacterInfo(int malId);

Future<BuiltList<Picture>> getCharactersPictures(int characterId);
```

**Search**
Search results for the query

```dart
Future<BuiltList<Search>> search(SearchType type, {String query, int page});
```

**Season**
Anime of the specified season

```dart
Future<Season> getSeason(int year, SeasonType season);

Future<Season> getSeasonLater();

Future<BuiltList<SeasonArchive>> getSeasonArchive();
```

**Schedule**
Anime schedule of the week or specified day

```dart
Future<Schedule> getSchedule({WeekDay weekday});
```

**Top**
Top items on MyAnimeList

```dart
Future<BuiltList<Top>> getTop(TopType type, {int page, TopSubtype subtype});
```

**Genre**
Anime/Manga items of the genre

```dart
Future<GenreList> getGenre(GenreType type, Genre genre, {int page = 1});
```

**Producer**
Anime by this Producer/Studio/Licensor

```dart
Future<Producer> getProducers(int producerId, {int page = 1});
```

**Magazine**
Manga by this Magazine/Serializer/Publisher

```dart
Future<Producer> getMagazines(int magazineId, {int page = 1});
```

**User**
User related data

```dart
Future<UserProfile> getUserProfile(String username);

Future<BuiltList<History>> getUserHistory(String username, HistoryType historyType);

Future<BuiltList<Friend>> getUserFriends(String username);

Future<BuiltList<AnimeItem>> getUserAnimeList(String username, MangaAnimeListType listType, {String order, int page = 1});

Future<BuiltList<MangaItem>> getUserMangaList(String username, MangaAnimeListType listType, {String order, int page = 1});
```

API bindings:

- [x] Top
    - [x] Anime
        - [x] all
        - [x] airing
        - [x] upcoming
        - [x] tv
        - [x] movie
        - [x] ova
        - [x] special
        - [x] bypopularity
        - [x] favorite
    - [x] Manga
        - [x] all
        - [x] manga
        - [x] novels
        - [x] oneshots
        - [x] doujin
        - [x] manhwa
        - [x] manhua
        - [x] bypopularity
        - [x] favorite
    - [x] People
    - [x] Characters

- [x] Anime
    - [x] Characters staff 
    - [x] Episodes
    - [x] News
    - [x] Pictures
    - [x] Videos
    - [x] Stats
    - [x] Forum
    - [x] More info
    - [x] Reviews
    - [x] Recommendations
    - [x] User updates
    
- [x] Manga
    - [x] Characters 
    - [x] News
    - [x] Pictures
    - [x] Stats
    - [x] Forum
    - [x] More info
    - [x] Reviews
    - [x] Recommendations
    - [x] User updates

- [x] Person

- [x] Character

- [x] Search

- [x] Season

- [x] Season Archive

- [x] Season Later

- [x] Schedule

- [x] Genre
    
- [x] Producer

- [x] Magazine

- [x] User
    - [x] Profile
    - [x] History
    - [x] Friends
    - [x] Anime list
        - [x] all
        - [x] watching
        - [x] completed
        - [x] on hold
        - [x] dropped
        - [x] plan to watch
    - [x] Manga list
        - [x] all
        - [x] reading
        - [x] completed
        - [x] on hold
        - [x] dropped
        - [x] plan to read
        
- [ ] Club

- [ ] Meta