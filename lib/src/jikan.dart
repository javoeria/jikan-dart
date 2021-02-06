import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_api/src/model/anime/anime.dart';
import 'package:jikan_api/src/model/anime/character_staff.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/anime/promo.dart';
import 'package:jikan_api/src/model/character/character.dart';
import 'package:jikan_api/src/model/character/character_role.dart';
import 'package:jikan_api/src/model/club/club.dart';
import 'package:jikan_api/src/model/club/member.dart';
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
import 'package:jikan_api/src/model/schedule/schedule.dart';
import 'package:jikan_api/src/model/search/search.dart';
import 'package:jikan_api/src/model/season/season.dart';
import 'package:jikan_api/src/model/season/season_archive.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/top/top.dart';
import 'package:jikan_api/src/model/user/friend.dart';
import 'package:jikan_api/src/model/user/history.dart';
import 'package:jikan_api/src/model/user/user_item.dart';
import 'package:jikan_api/src/model/user/user_profile.dart';

class Jikan {
  Jikan({this.debug = true});

  final bool debug;

  Future<Map<String, dynamic>> _getResponse(String url) async {
    http.Response response;
    if (debug) print(baseUrl + url);
    do {
      response = await http.get(baseUrl + url);
    } while (response.statusCode == 429 || response.statusCode == 500);

    return json.decode(response.body);
  }

  FullType _fullType(Type type) => FullType(BuiltList, [FullType(type)]);

  String _enumToString(Object o) => o.toString().split('.')[1];

  Future<Anime> getAnimeInfo(int animeId) async {
    var url = '/anime/$animeId';
    var response = await _getResponse(url);

    return Anime.fromJson(response);
  }

  Future<CharacterStaff> getAnimeCharactersStaff(int animeId) async {
    var url = '/anime/$animeId/characters_staff';
    var response = await _getResponse(url);

    return CharacterStaff.fromJson(response);
  }

  Future<BuiltList<Episode>> getAnimeEpisodes(int animeId,
      {int page = 1}) async {
    var url = '/anime/$animeId/episodes/$page';
    var response = await _getResponse(url);

    final episodes = response['episodes'] ?? [];
    return serializers.deserialize(episodes, specifiedType: _fullType(Episode));
  }

  Future<BuiltList<Article>> getAnimeNews(int animeId) async {
    var url = '/anime/$animeId/news';
    var response = await _getResponse(url);

    final articles = response['articles'] ?? [];
    return serializers.deserialize(articles, specifiedType: _fullType(Article));
  }

  Future<BuiltList<Picture>> getAnimePictures(int animeId) async {
    var url = '/anime/$animeId/pictures';
    var response = await _getResponse(url);

    final pictures = response['pictures'] ?? [];
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture));
  }

  Future<BuiltList<Promo>> getAnimeVideos(int animeId) async {
    var url = '/anime/$animeId/videos';
    var response = await _getResponse(url);

    final promo = response['promo'] ?? [];
    return serializers.deserialize(promo, specifiedType: _fullType(Promo));
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = '/anime/$animeId/stats';
    var response = await _getResponse(url);

    return Stats.fromJson(response);
  }

  Future<BuiltList<Forum>> getAnimeForum(int animeId, {ForumType type}) async {
    var url = '/anime/$animeId/forum';
    if (type != null) url += '/${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['topics'] ?? [];
    return serializers.deserialize(topics, specifiedType: _fullType(Forum));
  }

  Future<String> getAnimeMoreInfo(int animeId) async {
    var url = '/anime/$animeId/moreinfo';
    var response = await _getResponse(url);

    return response['moreinfo'];
  }

  Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1}) async {
    var url = '/anime/$animeId/reviews/$page';
    var response = await _getResponse(url);

    final reviews = response['reviews'] ?? [];
    return serializers.deserialize(reviews, specifiedType: _fullType(Review));
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId) async {
    var url = '/anime/$animeId/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['recommendations'] ?? [];
    return serializers.deserialize(recommendations,
        specifiedType: _fullType(Recommendation));
  }

  Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int animeId,
      {int page = 1}) async {
    var url = '/anime/$animeId/userupdates/$page';
    var response = await _getResponse(url);

    final users = response['users'] ?? [];
    return serializers.deserialize(users, specifiedType: _fullType(UserUpdate));
  }

  Future<Manga> getMangaInfo(int mangaId) async {
    var url = '/manga/$mangaId';
    var response = await _getResponse(url);

    return Manga.fromJson(response);
  }

  Future<BuiltList<CharacterRole>> getMangaCharacters(int mangaId) async {
    var url = '/manga/$mangaId/characters';
    var response = await _getResponse(url);

    final characters = response['characters'] ?? [];
    return serializers.deserialize(characters,
        specifiedType: _fullType(CharacterRole));
  }

  Future<BuiltList<Article>> getMangaNews(int mangaId) async {
    var url = '/manga/$mangaId/news';
    var response = await _getResponse(url);

    final articles = response['articles'] ?? [];
    return serializers.deserialize(articles, specifiedType: _fullType(Article));
  }

  Future<BuiltList<Picture>> getMangaPictures(int mangaId) async {
    var url = '/manga/$mangaId/pictures';
    var response = await _getResponse(url);

    final pictures = response['pictures'] ?? [];
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture));
  }

  Future<Stats> getMangaStats(int mangaId) async {
    var url = '/manga/$mangaId/stats';
    var response = await _getResponse(url);

    return Stats.fromJson(response);
  }

  Future<BuiltList<Forum>> getMangaForum(int mangaId, {ForumType type}) async {
    var url = '/manga/$mangaId/forum';
    if (type != null) url += '/${_enumToString(type)}';
    var response = await _getResponse(url);

    final topics = response['topics'] ?? [];
    return serializers.deserialize(topics, specifiedType: _fullType(Forum));
  }

  Future<String> getMangaMoreInfo(int mangaId) async {
    var url = '/manga/$mangaId/moreinfo';
    var response = await _getResponse(url);

    return response['moreinfo'];
  }

  Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1}) async {
    var url = '/manga/$mangaId/reviews/$page';
    var response = await _getResponse(url);

    final reviews = response['reviews'] ?? [];
    return serializers.deserialize(reviews, specifiedType: _fullType(Review));
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId) async {
    var url = '/manga/$mangaId/recommendations';
    var response = await _getResponse(url);

    final recommendations = response['recommendations'] ?? [];
    return serializers.deserialize(recommendations,
        specifiedType: _fullType(Recommendation));
  }

  Future<BuiltList<UserUpdate>> getMangaUserUpdates(int mangaId,
      {int page = 1}) async {
    var url = '/manga/$mangaId/userupdates/$page';
    var response = await _getResponse(url);

    final users = response['users'] ?? [];
    return serializers.deserialize(users, specifiedType: _fullType(UserUpdate));
  }

  Future<Person> getPersonInfo(int personId) async {
    var url = '/person/$personId';
    var response = await _getResponse(url);

    return Person.fromJson(response);
  }

  Future<BuiltList<Picture>> getPersonPictures(int personId) async {
    var url = '/person/$personId/pictures';
    var response = await _getResponse(url);

    final pictures = response['pictures'] ?? [];
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture));
  }

  Future<Character> getCharacterInfo(int characterId) async {
    var url = '/character/$characterId';
    var response = await _getResponse(url);

    return Character.fromJson(response);
  }

  Future<BuiltList<Picture>> getCharacterPictures(int characterId) async {
    var url = '/character/$characterId/pictures';
    var response = await _getResponse(url);

    final pictures = response['pictures'] ?? [];
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture));
  }

  Future<BuiltList<Search>> search(String query, SearchType type,
      {String custom, int page = 1}) async {
    var url = '/search/${_enumToString(type)}?q=$query&page=$page';
    if (custom != null) url += custom;
    var response = await _getResponse(url);

    final results = response['results'] ?? [];
    return serializers.deserialize(results, specifiedType: _fullType(Search));
  }

  Future<Season> getSeason({int year, SeasonType season}) async {
    var url = '/season';
    if (year != null && season != null) {
      url += '/$year/${_enumToString(season)}';
    }
    var response = await _getResponse(url);

    return Season.fromJson(response);
  }

  Future<Season> getSeasonLater() async {
    var url = '/season/later';
    var response = await _getResponse(url);

    return Season.fromJson(response);
  }

  Future<BuiltList<SeasonArchive>> getSeasonArchive() async {
    var url = '/season/archive';
    var response = await _getResponse(url);

    final archive = response['archive'] ?? [];
    return serializers.deserialize(archive,
        specifiedType: _fullType(SeasonArchive));
  }

  Future<Schedule> getSchedule({WeekDay weekday}) async {
    var url = '/schedule';
    if (weekday != null) url += '/${_enumToString(weekday)}';
    var response = await _getResponse(url);

    return Schedule.fromJson(response);
  }

  Future<BuiltList<Top>> getTop(TopType type,
      {TopSubtype subtype, int page = 1}) async {
    var url = '/top/${_enumToString(type)}/$page';
    if (subtype != null) url += '/${_enumToString(subtype)}';
    var response = await _getResponse(url);

    final top = response['top'] ?? [];
    return serializers.deserialize(top, specifiedType: _fullType(Top));
  }

  Future<Genre> getGenre(int genreId, GenreType type, {int page = 1}) async {
    var url = '/genre/${_enumToString(type)}/$genreId/$page';
    var response = await _getResponse(url);

    return Genre.fromJson(response);
  }

  Future<Producer> getProducerInfo(int producerId, {int page = 1}) async {
    var url = '/producer/$producerId/$page';
    var response = await _getResponse(url);

    return Producer.fromJson(response);
  }

  Future<Magazine> getMagazineInfo(int magazineId, {int page = 1}) async {
    var url = '/magazine/$magazineId/$page';
    var response = await _getResponse(url);

    return Magazine.fromJson(response);
  }

  Future<UserProfile> getUserProfile(String username) async {
    var url = '/user/$username/profile';
    var response = await _getResponse(url);

    return UserProfile.fromJson(response);
  }

  Future<BuiltList<History>> getUserHistory(String username,
      {HistoryType type}) async {
    var url = '/user/$username/history';
    if (type != null) url += '/${_enumToString(type)}';
    var response = await _getResponse(url);

    final history = response['history'] ?? [];
    return serializers.deserialize(history, specifiedType: _fullType(History));
  }

  Future<BuiltList<Friend>> getUserFriends(String username,
      {int page = 1}) async {
    var url = '/user/$username/friends/$page';
    var response = await _getResponse(url);

    final friends = response['friends'] ?? [];
    return serializers.deserialize(friends, specifiedType: _fullType(Friend));
  }

  Future<BuiltList<UserItem>> getUserAnimeList(String username,
      {ListType type,
      String query,
      String order,
      String sort = 'desc',
      int page = 1}) async {
    var url = '/user/$username/animelist';
    if (type != null) url += '/${_enumToString(type)}/$page';
    if (query != null) url += '?q=$query';
    if (order != null) {
      url += url.contains('?') ? '&' : '?';
      url += 'order_by=$order&sort=$sort';
    }
    var response = await _getResponse(url);

    final anime = response['anime'] ?? [];
    return serializers.deserialize(anime, specifiedType: _fullType(UserItem));
  }

  Future<BuiltList<UserItem>> getUserMangaList(String username,
      {ListType type,
      String query,
      String order,
      String sort = 'desc',
      int page = 1}) async {
    var url = '/user/$username/mangalist';
    if (type != null) url += '/${_enumToString(type)}/$page';
    if (query != null) url += '?q=$query';
    if (order != null) {
      url += url.contains('?') ? '&' : '?';
      url += 'order_by=$order&sort=$sort';
    }
    var response = await _getResponse(url);

    final manga = response['manga'] ?? [];
    return serializers.deserialize(manga, specifiedType: _fullType(UserItem));
  }

  Future<Club> getClubInfo(int clubId) async {
    var url = '/club/$clubId';
    var response = await _getResponse(url);

    return Club.fromJson(response);
  }

  Future<BuiltList<Member>> getClubMembers(int clubId, {int page = 1}) async {
    var url = '/club/$clubId/members/$page';
    var response = await _getResponse(url);

    final members = response['members'] ?? [];
    return serializers.deserialize(members, specifiedType: _fullType(Member));
  }
}
