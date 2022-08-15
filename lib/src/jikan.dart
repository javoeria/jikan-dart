import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_api/src/model/anime/anime.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/anime/promo.dart';
import 'package:jikan_api/src/model/anime/staff.dart';
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

  FullType _fullType(Type type) => FullType(BuiltList, [FullType(type)]);

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
    var url = '/person/$personId';
    var response = await _getResponse(url);

    return Person.fromJson(response);
  }

  Future<BuiltList<Picture>> getPersonPictures(int personId) async {
    var url = '/person/$personId/pictures';
    var response = await _getResponse(url);

    var pictures = response['pictures'] ?? [];
    if (pictures.isNotEmpty &&
        pictures[0]['large'] == null &&
        pictures[0]['image_url'] != null) {
      pictures = pictures
          .map((i) => {'large': i['image_url'], 'small': i['image_url']});
    }
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture))!
        as BuiltList<Picture>;
  }

  Future<Character> getCharacterInfo(int characterId) async {
    var url = '/character/$characterId';
    var response = await _getResponse(url);

    return Character.fromJson(response);
  }

  Future<BuiltList<Picture>> getCharacterPictures(int characterId) async {
    var url = '/character/$characterId/pictures';
    var response = await _getResponse(url);

    var pictures = response['pictures'] ?? [];
    if (pictures.isNotEmpty &&
        pictures[0]['large'] == null &&
        pictures[0]['image_url'] != null) {
      pictures = pictures
          .map((i) => {'large': i['image_url'], 'small': i['image_url']});
    }
    return serializers.deserialize(pictures, specifiedType: _fullType(Picture))!
        as BuiltList<Picture>;
  }

  Future<BuiltList<Search>> search(String query, SearchType type,
      {String? custom, int page = 1}) async {
    var url = '/search/${_enumToString(type)}?q=$query&page=$page';
    if (custom != null) url += custom;
    var response = await _getResponse(url);

    final results = response['results'] ?? [];
    return serializers.deserialize(results, specifiedType: _fullType(Search))!
        as BuiltList<Search>;
  }

  Future<Season> getSeason({int? year, SeasonType? season}) async {
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
        specifiedType: _fullType(SeasonArchive))! as BuiltList<SeasonArchive>;
  }

  Future<Schedule> getSchedule({WeekDay? weekday}) async {
    var url = '/schedule';
    if (weekday != null) url += '/${_enumToString(weekday)}';
    var response = await _getResponse(url);

    return Schedule.fromJson(response);
  }

  Future<BuiltList<Top>> getTop(TopType type,
      {TopSubtype? subtype, int page = 1}) async {
    var url = '/top/${_enumToString(type)}/$page';
    if (subtype != null) url += '/${_enumToString(subtype)}';
    var response = await _getResponse(url);

    final top = response['top'] ?? [];
    return serializers.deserialize(top, specifiedType: _fullType(Top))!
        as BuiltList<Top>;
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
      {HistoryType? type}) async {
    var url = '/user/$username/history';
    if (type != null) url += '/${_enumToString(type)}';
    var response = await _getResponse(url);

    final history = response['history'] ?? [];
    return serializers.deserialize(history, specifiedType: _fullType(History))!
        as BuiltList<History>;
  }

  Future<BuiltList<Friend>> getUserFriends(String username,
      {int page = 1}) async {
    var url = '/user/$username/friends/$page';
    var response = await _getResponse(url);

    final friends = response['friends'] ?? [];
    return serializers.deserialize(friends, specifiedType: _fullType(Friend))!
        as BuiltList<Friend>;
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
    return serializers.deserialize(members, specifiedType: _fullType(Member))!
        as BuiltList<Member>;
  }
}
