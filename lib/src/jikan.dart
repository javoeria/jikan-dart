import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_api/src/model/anime/anime.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/anime/promo.dart';
import 'package:jikan_api/src/model/character/character.dart';
import 'package:jikan_api/src/model/character/character_meta.dart';
import 'package:jikan_api/src/model/common/archive.dart';
import 'package:jikan_api/src/model/common/article.dart';
import 'package:jikan_api/src/model/common/forum.dart';
import 'package:jikan_api/src/model/common/picture.dart';
import 'package:jikan_api/src/model/common/recommendation.dart';
import 'package:jikan_api/src/model/common/review.dart';
import 'package:jikan_api/src/model/common/stats.dart';
import 'package:jikan_api/src/model/common/user_update.dart';
import 'package:jikan_api/src/model/constants.dart';
import 'package:jikan_api/src/model/genre/genre.dart';
import 'package:jikan_api/src/model/magazine/magazine.dart';
import 'package:jikan_api/src/model/manga/manga.dart';
import 'package:jikan_api/src/model/person/person.dart';
import 'package:jikan_api/src/model/person/person_meta.dart';
import 'package:jikan_api/src/model/producer/producer.dart';
import 'package:jikan_api/src/model/user/friend.dart';
import 'package:jikan_api/src/model/user/history.dart';
import 'package:jikan_api/src/model/user/user_profile.dart';
import 'package:jikan_api/src/model/user/user_recommendation.dart';
import 'package:jikan_api/src/model/user/user_review.dart';
import 'package:jikan_api/src/model/watch/watch_episode.dart';
import 'package:jikan_api/src/model/watch/watch_promo.dart';

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

  Future<Anime> getAnime(int id) async {
    var url = '/anime/$id/full';
    var response = await _getResponse(url);

    return Anime.fromJson(response['data']);
  }

  Future<BuiltList<CharacterMeta>> getAnimeCharacters(int id) async {
    var url = '/anime/$id/characters';
    var response = await _getResponse(url);

    final characters = response['data'] ?? [];
    return BuiltList(characters.map((i) => CharacterMeta.fromJson(i)));
  }

  Future<BuiltList<PersonMeta>> getAnimeStaff(int id) async {
    var url = '/anime/$id/staff';
    var response = await _getResponse(url);

    final staff = response['data'] ?? [];
    return BuiltList(staff.map((i) => PersonMeta.fromJson(i)));
  }

  Future<BuiltList<Episode>> getAnimeEpisodes(int id, {int page = 1}) async {
    var url = '/anime/$id/episodes?page=$page';
    var response = await _getResponse(url);

    final episodes = response['data'] ?? [];
    return BuiltList(episodes.map((i) => Episode.fromJson(i)));
  }

  Future<BuiltList<Article>> getAnimeNews(int id, {int page = 1}) async {
    var url = '/anime/$id/news?page=$page';
    var response = await _getResponse(url);

    final articles = response['data'] ?? [];
    return BuiltList(articles.map((i) => Article.fromJson(i)));
  }

  Future<BuiltList<Forum>> getAnimeForum(int id, {ForumType? type}) async {
    var url = '/anime/$id/forum';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['data'] ?? [];
    return BuiltList(topics.map((i) => Forum.fromJson(i)));
  }

  Future<BuiltList<Promo>> getAnimeVideos(int id) async {
    var url = '/anime/$id/videos';
    var response = await _getResponse(url);

    final promo = response['data']['promo'] ?? [];
    return BuiltList(promo.map((i) => Promo.fromJson(i)));
  }

  Future<BuiltList<Picture>> getAnimePictures(int id) async {
    var url = '/anime/$id/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<Stats> getAnimeStatistics(int id) async {
    var url = '/anime/$id/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<String> getAnimeMoreInfo(int id) async {
    var url = '/anime/$id/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int id) async {
    var url = '/anime/$id/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['data'] ?? [];
    return BuiltList(recommendations.map((i) => Recommendation.fromJson(i)));
  }

  Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int id,
      {int page = 1}) async {
    var url = '/anime/$id/userupdates?page=$page';
    var response = await _getResponse(url);

    final users = response['data'] ?? [];
    return BuiltList(users.map((i) => UserUpdate.fromJson(i)));
  }

  Future<BuiltList<Review>> getAnimeReviews(int id, {int page = 1}) async {
    var url = '/anime/$id/reviews?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => Review.fromJson(i)));
  }

  Future<Manga> getManga(int id) async {
    var url = '/manga/$id/full';
    var response = await _getResponse(url);

    return Manga.fromJson(response['data']);
  }

  Future<BuiltList<CharacterMeta>> getMangaCharacters(int id) async {
    var url = '/manga/$id/characters';
    var response = await _getResponse(url);

    final characters = response['data'] ?? [];
    return BuiltList(characters.map((i) => CharacterMeta.fromJson(i)));
  }

  Future<BuiltList<Article>> getMangaNews(int id, {int page = 1}) async {
    var url = '/manga/$id/news?page=$page';
    var response = await _getResponse(url);

    final articles = response['data'] ?? [];
    return BuiltList(articles.map((i) => Article.fromJson(i)));
  }

  Future<BuiltList<Forum>> getMangaForum(int id, {ForumType? type}) async {
    var url = '/manga/$id/forum';
    if (type != null) url += '?filter=${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['data'] ?? [];
    return BuiltList(topics.map((i) => Forum.fromJson(i)));
  }

  Future<BuiltList<Picture>> getMangaPictures(int id) async {
    var url = '/manga/$id/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<Stats> getMangaStatistics(int id) async {
    var url = '/manga/$id/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<String> getMangaMoreInfo(int id) async {
    var url = '/manga/$id/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int id) async {
    var url = '/manga/$id/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['data'] ?? [];
    return BuiltList(recommendations.map((i) => Recommendation.fromJson(i)));
  }

  Future<BuiltList<UserUpdate>> getMangaUserUpdates(int id,
      {int page = 1}) async {
    var url = '/manga/$id/userupdates?page=$page';
    var response = await _getResponse(url);

    final users = response['data'] ?? [];
    return BuiltList(users.map((i) => UserUpdate.fromJson(i)));
  }

  Future<BuiltList<Review>> getMangaReviews(int id, {int page = 1}) async {
    var url = '/manga/$id/reviews?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => Review.fromJson(i)));
  }

  Future<Person> getPerson(int id) async {
    var url = '/people/$id/full';
    var response = await _getResponse(url);

    return Person.fromJson(response['data']);
  }

  Future<BuiltList<Picture>> getPersonPictures(int id) async {
    var url = '/people/$id/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
    return BuiltList(pictures.map((i) => Picture.fromJson(i)));
  }

  Future<Character> getCharacter(int id) async {
    var url = '/characters/$id/full';
    var response = await _getResponse(url);

    return Character.fromJson(response['data']);
  }

  Future<BuiltList<Picture>> getCharacterPictures(int id) async {
    var url = '/characters/$id/pictures';
    var response = await _getResponse(url);

    final pictures = response['data'] ?? [];
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

  Future<BuiltList<Anime>> getSeasonUpcoming({int page = 1}) async {
    var url = '/seasons/upcoming?page=$page';
    var response = await _getResponse(url);

    final anime = response['data'] ?? [];
    return BuiltList(anime.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Archive>> getSeasonsList() async {
    var url = '/seasons';
    var response = await _getResponse(url);

    final archive = response['data'] ?? [];
    return BuiltList(archive.map((i) => Archive.fromJson(i)));
  }

  Future<BuiltList<Anime>> getSchedules(
      {WeekDay? weekday, int page = 1}) async {
    var url = '/schedules?page=$page';
    if (weekday != null) url += '&filter=${_enumToString(weekday)}';
    var response = await _getResponse(url);

    final anime = response['data'] ?? [];
    return BuiltList(anime.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Anime>> getTopAnime(
      {TopType? type, TopFilter? filter, int page = 1}) async {
    var url = '/top/anime?page=$page';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (filter != null) url += '&filter=${_enumToString(filter)}';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => Anime.fromJson(i)));
  }

  Future<BuiltList<Manga>> getTopManga(
      {TopType? type, TopFilter? filter, int page = 1}) async {
    var url = '/top/manga?page=$page';
    if (type != null) url += '&type=${_enumToString(type)}';
    if (filter != null) url += '&filter=${_enumToString(filter)}';
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

  Future<BuiltList<UserReview>> getTopReviews({int page = 1}) async {
    var url = '/top/reviews?page=$page';
    var response = await _getResponse(url);

    final top = response['data'] ?? [];
    return BuiltList(top.map((i) => UserReview.fromJson(i)));
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

  Future<BuiltList<UserReview>> getUserReviews(String username,
      {int page = 1}) async {
    var url = '/users/$username/reviews?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    reviews.forEach((review) => review['user'] ??= {
          'url': 'https://myanimelist.net/profile/$username',
          'username': username
        });
    return BuiltList(reviews.map((i) => UserReview.fromJson(i)));
  }

  Future<BuiltList<UserRecommendation>> getUserRecommendations(String username,
      {int page = 1}) async {
    var url = '/users/$username/recommendations?page=$page';
    var response = await _getResponse(url);

    final recs = response['data'] ?? [];
    recs.forEach((rec) => rec['user'] ??= {
          'url': 'https://myanimelist.net/profile/$username',
          'username': username
        });
    return BuiltList(recs.map((i) => UserRecommendation.fromJson(i)));
  }

  Future<BuiltList<UserReview>> getRecentAnimeReviews({int page = 1}) async {
    var url = '/reviews/anime?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => UserReview.fromJson(i)));
  }

  Future<BuiltList<UserReview>> getRecentMangaReviews({int page = 1}) async {
    var url = '/reviews/manga?page=$page';
    var response = await _getResponse(url);

    final reviews = response['data'] ?? [];
    return BuiltList(reviews.map((i) => UserReview.fromJson(i)));
  }

  Future<BuiltList<UserRecommendation>> getRecentAnimeRecommendations(
      {int page = 1}) async {
    var url = '/recommendations/anime?page=$page';
    var response = await _getResponse(url);

    final recs = response['data'] ?? [];
    return BuiltList(recs.map((i) => UserRecommendation.fromJson(i)));
  }

  Future<BuiltList<UserRecommendation>> getRecentMangaRecommendations(
      {int page = 1}) async {
    var url = '/recommendations/manga?page=$page';
    var response = await _getResponse(url);

    final recs = response['data'] ?? [];
    return BuiltList(recs.map((i) => UserRecommendation.fromJson(i)));
  }

  Future<BuiltList<WatchEpisode>> getWatchEpisodes(
      {bool popular = false}) async {
    var url = popular ? '/watch/episodes/popular' : '/watch/episodes';
    var response = await _getResponse(url);

    final watch = response['data'] ?? [];
    return BuiltList(watch.map((i) => WatchEpisode.fromJson(i)));
  }

  Future<BuiltList<WatchPromo>> getWatchPromos({bool popular = false}) async {
    var url = popular ? '/watch/promos/popular' : '/watch/promos';
    var response = await _getResponse(url);

    final watch = response['data'] ?? [];
    return BuiltList(watch.map((i) => WatchPromo.fromJson(i)));
  }
}
