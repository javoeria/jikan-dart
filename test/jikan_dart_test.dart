import 'package:test/test.dart';
import 'package:jikan_dart/jikan_dart.dart';

void main() {
  JikanApi jikanApi;

  setUpAll(() {
    jikanApi = JikanApi();
  });

  group('Anime Test', () {
    test('Anime info', () async {
      var anime = await jikanApi.getAnimeInfo(1);
      expect(anime.title, 'Cowboy Bebop');
      expect(anime.genres.first.name, 'Action');
      expect(anime.studios.first.name, 'Sunrise');
    });

    test('Anime characters staff', () async {
      var anime = await jikanApi.getAnimeCharactersStaff(1);
      expect(anime.characters.first.name, 'Black, Jet');
      expect(anime.staff.first.name, 'Maseba, Yutaka');
    });

    test('Anime episodes', () async {
      var anime = await jikanApi.getAnimeEpisodes(1);
      expect(anime.first.title, 'Asteroid Blues');
    });

    test('Anime news', () async {
      var anime = await jikanApi.getAnimeNews(1);
      expect(anime.first.title,
          'North American Anime & Manga Releases for November');
    });

    test('Anime pictures', () async {
      var anime = await jikanApi.getAnimePictures(1);
      expect(anime.first.small,
          'https://cdn.myanimelist.net/images/anime/7/3791.jpg');
    });

    test('Anime videos', () async {
      var anime = await jikanApi.getAnimeVideos(1);
      expect(anime.first.title, 'PV Blu-ray Box version');
    });

    test('Anime stats', () async {
      var anime = await jikanApi.getAnimeStats(1);
      expect(anime.completed, greaterThan(500000));
    });

    test('Anime forum', () async {
      var anime = await jikanApi.getAnimeForum(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime reviews', () async {
      var anime = await jikanApi.getAnimeReviews(1);
      expect(anime.first.content, isA<String>());
    });

    test('Anime recommendations', () async {
      var anime = await jikanApi.getAnimeRecommendations(1);
      expect(anime.first.title, 'Samurai Champloo');
    });
  });

  group('Manga Test', () {
    test('Manga info', () async {
      var manga = await jikanApi.getMangaInfo(1);
      expect(manga.title, 'Monster');
      expect(manga.genres.first.name, 'Mystery');
      expect(manga.authors.first.name, 'Urasawa, Naoki');
    });

    test('Manga characters', () async {
      var manga = await jikanApi.getMangaCharacters(1);
      expect(manga.first.name, 'Liebert, Anna');
    });

    test('Manga news', () async {
      var manga = await jikanApi.getMangaNews(1);
      expect(
          manga.first.title, 'North American Anime & Manga Releases for July');
    });

    test('Manga pictures', () async {
      var manga = await jikanApi.getMangaPictures(1);
      expect(manga.first.small,
          'https://cdn.myanimelist.net/images/manga/3/54525.jpg');
    });

    test('Manga stats', () async {
      var manga = await jikanApi.getMangaStats(1);
      expect(manga.completed, greaterThan(30000));
    });

    test('Manga forum', () async {
      var manga = await jikanApi.getMangaForum(1);
      expect(manga.first.title, isA<String>());
    });

    test('Manga reviews', () async {
      var manga = await jikanApi.getMangaReviews(1);
      expect(manga.first.content, isA<String>());
    });

    test('Manga recommendations', () async {
      var manga = await jikanApi.getMangaRecommendations(1);
      expect(manga.first.title, 'Death Note');
    });
  });

  group('Industry Test', () {
    test('Person info', () async {
      var person = await jikanApi.getPersonInfo(1);
      expect(person.name, 'Tomokazu Seki');
      expect(person.voiceActingRoles.first.role, 'Supporting');
      expect(
          person.animeStaffPositions.first.position, 'Theme Song Performance');
      expect(person.publishedManga, isEmpty);
    });

    test('Character info', () async {
      var character = await jikanApi.getCharacterInfo(1);
      expect(character.name, 'Spike Spiegel');
      expect(character.animeography.first.name, 'Cowboy Bebop');
      expect(character.mangaography.first.name, 'Cowboy Bebop');
      expect(character.voiceActors.first.name, 'Yamadera, Kouichi');
    });

    test('Producer info', () async {
      var producer = await jikanApi.getProducerInfo(1);
      expect(producer.meta.name, 'Studio Pierrot');
      expect(producer.anime.first.title, 'Tokyo Ghoul');
    });

    test('Magazine info', () async {
      var magazine = await jikanApi.getMagazineInfo(1);
      expect(magazine.meta.name, 'Big Comic Original');
      expect(magazine.manga.first.title, 'Monster');
    });
  });

  group('Season Test', () {
    test('Search list', () async {
      var search = await jikanApi.search('shingeki', SearchType.anime);
      expect(search.first.title, 'Shingeki no Kyojin');
    });

    test('Season list', () async {
      var season = await jikanApi.getSeason();
      expect(season.seasonYear, greaterThanOrEqualTo(2019));
      expect(season.seasonName, anyOf(['Winter', 'Spring', 'Summer', 'Fall']));
    });

    test('Season later list', () async {
      var season = await jikanApi.getSeasonLater();
      expect(season.seasonYear, isNull);
      expect(season.seasonName, 'Later');
    });

    test('Schedule list', () async {
      var schedule = await jikanApi.getSchedule();
      expect(schedule.monday, isNotEmpty);
      expect(schedule.tuesday, isNotEmpty);
      expect(schedule.wednesday, isNotEmpty);
      expect(schedule.thursday, isNotEmpty);
      expect(schedule.friday, isNotEmpty);
      expect(schedule.saturday, isNotEmpty);
      expect(schedule.sunday, isNotEmpty);
      expect(schedule.other, isNotEmpty);
      expect(schedule.unknown, isNotEmpty);
    });

    test('Top list', () async {
      var top = await jikanApi.getTop(TopType.anime);
      expect(top.first.title, 'Fullmetal Alchemist: Brotherhood');
    });
  });

  group('User Test', () {
    test('User profile', () async {
      var user = await jikanApi.getUserProfile('javoeria');
      expect(user.username, 'javoeria');
      expect(user.animeStats.completed, greaterThan(0));
      expect(user.mangaStats.completed, greaterThan(0));
      expect(user.favorites.anime.first.name, 'FLCL');
      expect(user.favorites.manga.first.name, 'Oyasumi Punpun');
      expect(user.favorites.characters.first.name, 'Oshino, Ougi');
      expect(user.favorites.people.first.name, 'Kon, Satoshi');
    });

    test('User anime list', () async {
      var user = await jikanApi.getUserAnimeList('javoeria', AllListType(),
          order: 'score');
      expect(user.first.title, 'Neon Genesis Evangelion');
    });

    test('User manga list', () async {
      var user = await jikanApi.getUserMangaList('javoeria', AllListType(),
          order: 'score');
      expect(user.first.title, 'Oyasumi Punpun');
    });
  });
}
