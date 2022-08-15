import 'dart:io';

import 'package:jikan_api/jikan_api.dart';
import 'package:test/test.dart';

void main() {
  late Jikan jikan;

  setUpAll(() {
    jikan = Jikan(debug: true);
  });

  setUp(() {
    // https://docs.api.jikan.moe/#section/Information/Rate-Limiting
    sleep(const Duration(seconds: 4));
  });

  group('Anime Test', () {
    test('Anime info', () async {
      var anime = await jikan.getAnimeInfo(1);
      expect(anime.title, 'Cowboy Bebop');
      expect(anime.genres.first.name, 'Action');
      expect(anime.studios.first.name, 'Sunrise');
    });

    test('Anime characters', () async {
      var anime = await jikan.getAnimeCharacters(1);
      expect(anime.first.name, 'Black, Jet');
    });

    test('Anime staff', () async {
      var anime = await jikan.getAnimeStaff(1);
      expect(anime.first.name, 'Maseba, Yutaka');
    });

    test('Anime episodes', () async {
      var anime = await jikan.getAnimeEpisodes(1);
      expect(anime.first.title, 'Asteroid Blues');
    });

    test('Anime news', () async {
      var anime = await jikan.getAnimeNews(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime pictures', () async {
      var anime = await jikan.getAnimePictures(1);
      expect(anime.first.imageUrl, isA<String>());
    });

    test('Anime videos', () async {
      var anime = await jikan.getAnimeVideos(1);
      expect(anime.first.title, 'PV Blu-ray Box version');
    });

    test('Anime stats', () async {
      var anime = await jikan.getAnimeStats(1);
      expect(anime.completed, greaterThan(500000));
    });

    test('Anime forum', () async {
      var anime = await jikan.getAnimeForum(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime reviews', () async {
      var anime = await jikan.getAnimeReviews(1);
      expect(anime.first.review, isA<String>());
    });

    test('Anime recommendations', () async {
      var anime = await jikan.getAnimeRecommendations(1);
      expect(anime.first.title, isA<String>());
    });
  });

  group('Manga Test', () {
    test('Manga info', () async {
      var manga = await jikan.getMangaInfo(1);
      expect(manga.title, 'Monster');
      expect(manga.genres.first.name, 'Award Winning');
      expect(manga.authors.first.name, 'Urasawa, Naoki');
    });

    test('Manga characters', () async {
      var manga = await jikan.getMangaCharacters(1);
      expect(manga.first.name, 'Liebert, Anna');
    });

    test('Manga news', () async {
      var manga = await jikan.getMangaNews(1);
      expect(manga.first.title, isA<String>());
    });

    test('Manga pictures', () async {
      var manga = await jikan.getMangaPictures(1);
      expect(manga.first.imageUrl, isA<String>());
    });

    test('Manga stats', () async {
      var manga = await jikan.getMangaStats(1);
      expect(manga.completed, greaterThan(30000));
    });

    test('Manga forum', () async {
      var manga = await jikan.getMangaForum(1);
      expect(manga.first.title, isA<String>());
    });

    test('Manga reviews', () async {
      var manga = await jikan.getMangaReviews(1);
      expect(manga.first.review, isA<String>());
    });

    test('Manga recommendations', () async {
      var manga = await jikan.getMangaRecommendations(1);
      expect(manga.first.title, isA<String>());
    });
  });

  group('Industry Test', () {
    test('Person info', () async {
      var person = await jikan.getPersonInfo(1);
      expect(person.name, 'Tomokazu Seki');
      // expect(person.voiceActingRoles.first.role, 'Supporting');
      expect(
          person.animeStaffPositions.first.position, 'Theme Song Performance');
      expect(person.publishedManga, isEmpty);
    });

    test('Character info', () async {
      var character = await jikan.getCharacterInfo(1);
      expect(character.name, 'Spike Spiegel');
      expect(character.animeography.first.name, 'Cowboy Bebop');
      expect(character.mangaography.first.name, 'Cowboy Bebop');
      expect(character.voiceActors.first.name, 'Yamadera, Kouichi');
    });

    test('Producer info', () async {
      var producer = await jikan.getProducerInfo(1);
      // expect(producer.meta.name, 'Studio Pierrot');
      expect(producer.anime.first.title, 'Naruto');
    });

    test('Magazine info', () async {
      var magazine = await jikan.getMagazineInfo(1);
      expect(magazine.meta.name, 'Big Comic Original');
      expect(magazine.manga.first.title, 'Monster');
    });

    test('Club info', () async {
      var club = await jikan.getClubInfo(1);
      expect(club.title, 'Cowboy Bebop');
      expect(club.category, 'Anime');
    });
  });

  group('Season Test', () {
    test('Search list', () async {
      var search = await jikan.search('shingeki', SearchType.anime);
      expect(search.first.title, 'Shingeki no Kyojin');
    });

    test('Season list', () async {
      var season = await jikan.getSeason();
      expect(season.seasonYear, greaterThanOrEqualTo(2019));
      expect(season.seasonName, anyOf(['Winter', 'Spring', 'Summer', 'Fall']));
    });

    test('Season later list', () async {
      var season = await jikan.getSeasonLater();
      expect(season.seasonYear, isNull);
      expect(season.seasonName, 'Later');
    });

    test('Schedule list', () async {
      var schedule = await jikan.getSchedule();
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
      var top = await jikan.getTop(TopType.anime);
      expect(top.first.title, 'Fullmetal Alchemist: Brotherhood');
    });

    test('Genre list', () async {
      var genre = await jikan.getGenre(1, GenreType.anime);
      expect(genre.anime!.first.title, 'Shingeki no Kyojin');
    });
  });

  group('User Test', () {
    test('User profile', () async {
      var user = await jikan.getUserProfile('javoeria');
      expect(user.username, 'javoeria');
      expect(user.animeStats.completed, greaterThan(0));
      expect(user.mangaStats.completed, greaterThan(0));
      expect(user.favorites.anime.first.name, 'FLCL');
      expect(user.favorites.manga.first.name, 'Oyasumi Punpun');
      expect(user.favorites.characters.first.name, 'Oshino, Ougi');
      expect(user.favorites.people.first.name, 'Kon, Satoshi');
    });

    test('User friends', () async {
      var user = await jikan.getUserFriends('javoeria');
      expect(user.first.username, isA<String>());
    });
  });
}
