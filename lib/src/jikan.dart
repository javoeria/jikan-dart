import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_api/src/model/anime/anime.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/anime/promo.dart';
import 'package:jikan_api/src/model/anime/staff.dart';
import 'package:jikan_api/src/model/character/character.dart';
import 'package:jikan_api/src/model/character/character_role.dart';
import 'package:jikan_api/src/model/common/article.dart';
import 'package:jikan_api/src/model/common/picture.dart';
import 'package:jikan_api/src/model/common/recommendation.dart';
import 'package:jikan_api/src/model/common/review.dart';
import 'package:jikan_api/src/model/common/stats.dart';
import 'package:jikan_api/src/model/common/user_update.dart';
import 'package:jikan_api/src/model/constants.dart';
import 'package:jikan_api/src/model/forum/forum.dart';
import 'package:jikan_api/src/model/genre/genre.dart';
import 'package:jikan_api/src/model/magazine/magazine.dart';
import 'package:jikan_api/src/model/manga/manga.dart';
import 'package:jikan_api/src/model/person/person.dart';
import 'package:jikan_api/src/model/producer/producer.dart';
import 'package:jikan_api/src/model/season/season_archive.dart';
import 'package:jikan_api/src/model/user/friend.dart';
import 'package:jikan_api/src/model/user/history.dart';
import 'package:jikan_api/src/model/user/user_profile.dart';

class Jikan {
  Jikan({this.debug = false});

  final bool debug;

  Future<Map<String, dynamic>> _getResponse(String url) async {
    http.Response response;
    if (debug) print(baseUrl + url);
    do {
      response = await http.get(Uri.parse(baseUrl + url));
    } while (response.statusCode == 429 || response.statusCode == 500);

    return json.decode(response.body);
  }

  String _enumToString(Object o) => o.toString().split('.')[1];

  Future<Anime> getAnimeInfo(int animeId) async {
    var url = '/anime/$animeId/full';
    var response = await _getResponse(url);

    return Anime.fromJson(response['data']);
  }

  Future<BuiltList<CharacterRole>> getAnimeCharacters(int animeId) async {
    var url = '/anime/$animeId/characters';
    var response = await _getResponse(url);

    final characters = response['data'] ?? [];
    return BuiltList(characters.map((i) => CharacterRole.fromJson(i)));
  }

  Future<BuiltList<Staff>> getAnimeStaff(int animeId) async {
    var url = '/anime/$animeId/staff';
    var response = await _getResponse(url);

    final staff = response['data'] ?? [];
    return BuiltList(staff.map((i) => Staff.fromJson(i)));
  }

  Future<BuiltList<Episode>> getAnimeEpisodes(int animeId,
      {int page = 1}) async {
    var url = '/anime/$animeId/episodes?page=$page';
    var response = await _getResponse(url);

    final episodes = response['data'] ?? [];
    return BuiltList(episodes.map((i) => Episode.fromJson(i)));
  }

  Future<BuiltList<Article>> getAnimeNews(int animeId, {int page = 1}) async {
    var url = '/anime/$animeId/news?page=$page';
    var response = await _getResponse(url);

    final articles = response['data'] ?? [];
    return BuiltList(articles.map((i) => Article.fromJson(i)));
  }

  Future<BuiltList<Picture>> getAnimePictures(int animeId) async {
    var url = '/anime/$animeId/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<BuiltList<Promo>> getAnimeVideos(int animeId) async {
    var url = '/anime/$animeId/videos';
    var response = await _getResponse(url);

    final promo = response['data']['promo'] ?? [];
    return BuiltList(promo.map((i) => Promo.fromJson(i)));
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = '/anime/$animeId/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<BuiltList<Forum>> getAnimeForum(int animeId, {ForumType? type}) async {
    var url = '/anime/$animeId/forum';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['data'] ?? [];
    return BuiltList(topics.map((i) => Forum.fromJson(i)));
  }

  Future<String> getAnimeMoreInfo(int animeId) async {
    var url = '/anime/$animeId/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1}) async {
    var url = '/anime/$animeId/reviews?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => Review.fromJson(i)));
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId) async {
    var url = '/anime/$animeId/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['data'] ?? [];
    return BuiltList(recommendations.map((i) => Recommendation.fromJson(i)));
  }

  Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int animeId,
      {int page = 1}) async {
    var url = '/anime/$animeId/userupdates?page=$page';
    var response = await _getResponse(url);

    final users = response['data'] ?? [];
    return BuiltList(users.map((i) => UserUpdate.fromJson(i)));
  }

  Future<Manga> getMangaInfo(int mangaId) async {
    var url = '/manga/$mangaId/full';
    var response = await _getResponse(url);

    return Manga.fromJson(response['data']);
  }

  Future<BuiltList<CharacterRole>> getMangaCharacters(int mangaId) async {
    var url = '/manga/$mangaId/characters';
    var response = await _getResponse(url);

    final characters = response['data'] ?? [];
    return BuiltList(characters.map((i) => CharacterRole.fromJson(i)));
  }

  Future<BuiltList<Article>> getMangaNews(int mangaId, {int page = 1}) async {
    var url = '/manga/$mangaId/news?page=$page';
    var response = await _getResponse(url);

    final articles = response['data'] ?? [];
    return BuiltList(articles.map((i) => Article.fromJson(i)));
  }

  Future<BuiltList<Picture>> getMangaPictures(int mangaId) async {
    var url = '/manga/$mangaId/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<Stats> getMangaStats(int mangaId) async {
    var url = '/manga/$mangaId/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<BuiltList<Forum>> getMangaForum(int mangaId, {ForumType? type}) async {
    var url = '/manga/$mangaId/forum';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['data'] ?? [];
    return BuiltList(topics.map((i) => Forum.fromJson(i)));
  }

  Future<String> getMangaMoreInfo(int mangaId) async {
    var url = '/manga/$mangaId/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1}) async {
    var url = '/manga/$mangaId/reviews?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => Review.fromJson(i)));
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId) async {
    var url = '/manga/$mangaId/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['data'] ?? [];
    return BuiltList(recommendations.map((i) => Recommendation.fromJson(i)));
  }

  Future<BuiltList<UserUpdate>> getMangaUserUpdates(int mangaId,
      {int page = 1}) async {
    var url = '/manga/$mangaId/userupdates?page=$page';
    var response = await _getResponse(url);

    final users = response['data'] ?? [];
    return BuiltList(users.map((i) => UserUpdate.fromJson(i)));
  }

  Future<Person> getPersonInfo(int personId) async {
    var url = '/people/$personId/full';
    var response = await _getResponse(url);

    return Person.fromJson(response['data']);
  }

  Future<BuiltList<Picture>> getPersonPictures(int personId) async {
    var url = '/people/$personId/pictures';
    var response = await _getResponse(url);

    var pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<Character> getCharacterInfo(int characterId) async {
    var url = '/characters/$characterId/full';
    var response = await _getResponse(url);

    return Character.fromJson(response['data']);
  }

  Future<BuiltList<Picture>> getCharacterPictures(int characterId) async {
    var url = '/characters/$characterId/pictures';
    var response = await _getResponse(url);

    var pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<BuiltList<Anime>> searchAnime(
      {String? query,
      AnimeType? type,
      List<int>? genres,
      List<int>? producers,
      String? orderBy,
      String? sort,
      String? rawQuery,
      int page = 1}) async {
    var url = '/anime?page=$page';
    if (query != null) url += '&q=$query';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (genres != null) url += '&genres=${genres.join(',')}';
    if (producers != null) url += '&producers=${producers.join(',')}';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    if (rawQuery != null) url += rawQuery;
    var response = await _getResponse(url);

    final results = response['data'] ?? [];
    return BuiltList(results.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Manga>> searchManga(
      {String? query,
      MangaType? type,
      List<int>? genres,
      List<int>? magazines,
      String? orderBy,
      String? sort,
      String? rawQuery,
      int page = 1}) async {
    var url = '/manga?page=$page';
    if (query != null) url += '&q=$query';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (genres != null) url += '&genres=${genres.join(',')}';
    if (magazines != null) url += '&magazines=${magazines.join(',')}';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    if (rawQuery != null) url += rawQuery;
    var response = await _getResponse(url);

    final results = response['data'] ?? [];
    return BuiltList(results.map((i) => Manga.fromJson(i)));
  }

  Future<BuiltList<Person>> searchPeople(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/people?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final results = response['data'] ?? [];
    return BuiltList(results.map((i) => Person.fromJson(i)));
  }

  Future<BuiltList<Character>> searchCharacters(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/characters?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final results = response['data'] ?? [];
    return BuiltList(results.map((i) => Character.fromJson(i)));
  }

  Future<BuiltList<Anime>> getSeason(
      {int? year, SeasonType? season, int page = 1}) async {
    var url = '/seasons';
    if (year != null && season != null) {
      url += '/$year/${_enumToString(season)}?page=$page';
    } else {
      url += '/now?page=$page';
    }
    var response = await _getResponse(url);

    final anime = response['data'] ?? [];
    return BuiltList(anime.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Anime>> getSeasonLater({int page = 1}) async {
    var url = '/seasons/upcoming?page=$page';
    var response = await _getResponse(url);

    final anime = response['data'] ?? [];
    return BuiltList(anime.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<SeasonArchive>> getSeasonArchive() async {
    var url = '/seasons';
    var response = await _getResponse(url);

    final archive = response['data'] ?? [];
    return BuiltList(archive.map((i) => SeasonArchive.fromJson(i)));
  }

  Future<BuiltList<Anime>> getSchedule({WeekDay? weekday, int page = 1}) async {
    var url = '/schedules?page=$page';
    if (weekday != null) url += '&filter=${_enumToString(weekday)}';
    var response = await _getResponse(url);

    final anime = response['data'] ?? [];
    return BuiltList(anime.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Anime>> getTopAnime(
      {TopType? type, TopSubtype? subtype, int page = 1}) async {
    var url = '/top/anime?page=$page';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (subtype != null) url += '&filter=${_enumToString(subtype)}';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Manga>> getTopManga(
      {TopType? type, TopSubtype? subtype, int page = 1}) async {
    var url = '/top/manga?page=$page';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (subtype != null) url += '&filter=${_enumToString(subtype)}';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => Manga.fromJson(i)));
  }

  Future<BuiltList<Person>> getTopPeople({int page = 1}) async {
    var url = '/top/people?page=$page';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => Person.fromJson(i)));
  }

  Future<BuiltList<Character>> getTopCharacters({int page = 1}) async {
    var url = '/top/characters?page=$page';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => Character.fromJson(i)));
  }

  Future<BuiltList<Genre>> getAnimeGenres({GenreType? type}) async {
    var url = '/genres/anime';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final genres = response['data'] ?? [];
    return BuiltList(genres.map((i) => Genre.fromJson(i)));
  }

  Future<BuiltList<Genre>> getMangaGenres({GenreType? type}) async {
    var url = '/genres/manga';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final genres = response['data'] ?? [];
    return BuiltList(genres.map((i) => Genre.fromJson(i)));
  }

  Future<BuiltList<Producer>> getProducers(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/producers?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final producers = response['data'] ?? [];
    return BuiltList(producers.map((i) => Producer.fromJson(i)));
  }

  Future<BuiltList<Magazine>> getMagazines(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/magazines?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final magazines = response['data'] ?? [];
    return BuiltList(magazines.map((i) => Magazine.fromJson(i)));
  }

  Future<UserProfile> getUserProfile(String username) async {
    var url = '/users/$username/full';
    var response = await _getResponse(url);

    return UserProfile.fromJson(response['data']);
  }

  Future<BuiltList<History>> getUserHistory(String username,
      {HistoryType? type}) async {
    var url = '/users/$username/history';
    if (type != null) url += '?type=${_enumToString(type)}';
    var response = await _getResponse(url);

    final history = response['data'] ?? [];
    return BuiltList(history.map((i) => History.fromJson(i)));
  }

  Future<BuiltList<Friend>> getUserFriends(String username,
      {int page = 1}) async {
    var url = '/users/$username/friends?page=$page';
    var response = await _getResponse(url);

    final friends = response['data'] ?? [];
    return BuiltList(friends.map((i) => Friend.fromJson(i)));
  }
}
