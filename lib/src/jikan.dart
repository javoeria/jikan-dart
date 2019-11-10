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
import 'package:jikan_api/src/model/common/article.dart';
import 'package:jikan_api/src/model/common/forum.dart';
import 'package:jikan_api/src/model/common/more_info.dart';
import 'package:jikan_api/src/model/common/picture.dart';
import 'package:jikan_api/src/model/common/recommendation.dart';
import 'package:jikan_api/src/model/common/review.dart';
import 'package:jikan_api/src/model/common/stats.dart';
import 'package:jikan_api/src/model/common/user_update.dart';
import 'package:jikan_api/src/model/genre/genre.dart';
import 'package:jikan_api/src/model/genre/genre_list.dart';
import 'package:jikan_api/src/model/genre/genre_type.dart';
import 'package:jikan_api/src/model/magazine/magazine.dart';
import 'package:jikan_api/src/model/manga/manga.dart';
import 'package:jikan_api/src/model/person/person.dart';
import 'package:jikan_api/src/model/producer/producer.dart';
import 'package:jikan_api/src/model/schedule/schedule.dart';
import 'package:jikan_api/src/model/schedule/week_day.dart';
import 'package:jikan_api/src/model/search/search.dart';
import 'package:jikan_api/src/model/search/search_type.dart';
import 'package:jikan_api/src/model/season/season.dart';
import 'package:jikan_api/src/model/season/season_archive.dart';
import 'package:jikan_api/src/model/season/season_type.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/top/top.dart';
import 'package:jikan_api/src/model/top/top_type.dart';
import 'package:jikan_api/src/model/user/friend.dart';
import 'package:jikan_api/src/model/user/history.dart';
import 'package:jikan_api/src/model/user/history_type.dart';
import 'package:jikan_api/src/model/user/user_item.dart';
import 'package:jikan_api/src/model/user/user_profile.dart';
import 'package:jikan_api/src/model/user/user_request_type.dart';

class Jikan {
  final String baseUrl = 'https://api.jikan.moe/v3';

  Future<Anime> getAnimeInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId';

    print(url);
    var response = await http.get(url);

    return Anime.fromJson(response.body);
  }

  Future<CharacterStaff> getAnimeCharactersStaff(int animeId) async {
    var url = baseUrl + '/anime/$animeId/characters_staff';

    print(url);
    var response = await http.get(url);

    return CharacterStaff.fromJson(response.body);
  }

  Future<BuiltList<Episode>> getAnimeEpisodes(int animeId,
      {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/episodes/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var episodes = jsonEncoded['episodes'];
    final listEpisode = FullType(BuiltList, [FullType(Episode)]);

    return serializers.deserialize(episodes, specifiedType: listEpisode);
  }

  Future<BuiltList<Article>> getAnimeNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId/news';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var articles = jsonEncoded['articles'];
    final listArticle = FullType(BuiltList, [FullType(Article)]);

    return serializers.deserialize(articles, specifiedType: listArticle);
  }

  Future<BuiltList<Picture>> getAnimePictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var pictures = jsonEncoded['pictures'];
    final listPicture = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(pictures, specifiedType: listPicture);
  }

  Future<BuiltList<Promo>> getAnimeVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId/videos';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var promo = jsonEncoded['promo'];
    final listPromo = FullType(BuiltList, [FullType(Promo)]);

    return serializers.deserialize(promo, specifiedType: listPromo);
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = baseUrl + '/anime/$animeId/stats';

    print(url);
    var response = await http.get(url);

    return Stats.fromJson(response.body);
  }

  Future<BuiltList<Forum>> getAnimeForum(int animeId) async {
    var url = baseUrl + '/anime/$animeId/forum';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var topics = jsonEncoded['topics'];
    final listForum = FullType(BuiltList, [FullType(Forum)]);

    return serializers.deserialize(topics, specifiedType: listForum);
  }

  Future<MoreInfo> getAnimeMoreInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId/moreinfo';

    print(url);
    var response = await http.get(url);

    return MoreInfo.fromJson(response.body);
  }

  Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/reviews/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var reviews = jsonEncoded['reviews'];
    final listReview = FullType(BuiltList, [FullType(Review)]);

    return serializers.deserialize(reviews, specifiedType: listReview);
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId) async {
    var url = baseUrl + '/anime/$animeId/recommendations';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var recommendations = jsonEncoded['recommendations'];
    final listRecommendation = FullType(BuiltList, [FullType(Recommendation)]);

    return serializers.deserialize(recommendations,
        specifiedType: listRecommendation);
  }

  Future<BuiltList<UserUpdate>> getAnimeUserUpdates(int animeId,
      {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/userupdates/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var users = jsonEncoded['users'];
    final listUserUpdate = FullType(BuiltList, [FullType(UserUpdate)]);

    return serializers.deserialize(users, specifiedType: listUserUpdate);
  }

  Future<Manga> getMangaInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId';

    print(url);
    var response = await http.get(url);

    return Manga.fromJson(response.body);
  }

  Future<BuiltList<CharacterRole>> getMangaCharacters(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/characters';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var characters = jsonEncoded['characters'];
    final listCharacter = FullType(BuiltList, [FullType(CharacterRole)]);

    return serializers.deserialize(characters, specifiedType: listCharacter);
  }

  Future<BuiltList<Article>> getMangaNews(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/news';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var articles = jsonEncoded['articles'];
    final listArticle = FullType(BuiltList, [FullType(Article)]);

    return serializers.deserialize(articles, specifiedType: listArticle);
  }

  Future<BuiltList<Picture>> getMangaPictures(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var pictures = jsonEncoded['pictures'];
    final listPicture = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(pictures, specifiedType: listPicture);
  }

  Future<Stats> getMangaStats(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';

    print(url);
    var response = await http.get(url);

    return Stats.fromJson(response.body);
  }

  Future<BuiltList<Forum>> getMangaForum(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/forum';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var topics = jsonEncoded['topics'];
    final listForum = FullType(BuiltList, [FullType(Forum)]);

    return serializers.deserialize(topics, specifiedType: listForum);
  }

  Future<MoreInfo> getMangaMoreInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/moreinfo';

    print(url);
    var response = await http.get(url);

    return MoreInfo.fromJson(response.body);
  }

  Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1}) async {
    var url = baseUrl + '/manga/$mangaId/reviews/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var reviews = jsonEncoded['reviews'];
    final listReview = FullType(BuiltList, [FullType(Review)]);

    return serializers.deserialize(reviews, specifiedType: listReview);
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/recommendations';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var recommendations = jsonEncoded['recommendations'];
    final listRecommendation = FullType(BuiltList, [FullType(Recommendation)]);

    return serializers.deserialize(recommendations,
        specifiedType: listRecommendation);
  }

  Future<BuiltList<UserUpdate>> getMangaUserUpdates(int mangaId,
      {int page = 1}) async {
    var url = baseUrl + '/manga/$mangaId/userupdates/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var users = jsonEncoded['users'];
    final listUserUpdate = FullType(BuiltList, [FullType(UserUpdate)]);

    return serializers.deserialize(users, specifiedType: listUserUpdate);
  }

  Future<Person> getPersonInfo(int personId) async {
    var url = baseUrl + '/person/$personId';

    print(url);
    var response = await http.get(url);

    return Person.fromJson(response.body);
  }

  Future<BuiltList<Picture>> getPersonPictures(int personId) async {
    var url = baseUrl + '/person/$personId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var pictures = jsonEncoded['pictures'];
    final listPicture = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(pictures, specifiedType: listPicture);
  }

  Future<Character> getCharacterInfo(int characterId) async {
    var url = baseUrl + '/character/$characterId';

    print(url);
    var response = await http.get(url);

    return Character.fromJson(response.body);
  }

  Future<BuiltList<Picture>> getCharactersPictures(int characterId) async {
    var url = baseUrl + '/character/$characterId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var pictures = jsonEncoded['pictures'];
    final listPicture = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(pictures, specifiedType: listPicture);
  }

  Future<BuiltList<Search>> search(String query, SearchType type,
      {int page = 1}) async {
    var url = baseUrl + '/search/${searchTypeString(type)}?q=$query&page=$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var results = jsonEncoded['results'];
    final listSearch = FullType(BuiltList, [FullType(Search)]);

    return serializers.deserialize(results, specifiedType: listSearch);
  }

  Future<Season> getSeason({int year, SeasonType season}) async {
    var url = baseUrl + '/season';
    if (year != null && season != null) {
      url += '/$year/${seasonTypeString(season)}';
    }

    print(url);
    var response = await http.get(url);

    return Season.fromJson(response.body);
  }

  Future<Season> getSeasonLater() async {
    var url = baseUrl + '/season/later';

    print(url);
    var response = await http.get(url);

    return Season.fromJson(response.body);
  }

  Future<BuiltList<SeasonArchive>> getSeasonArchive() async {
    var url = baseUrl + '/season/archive';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var archive = jsonEncoded['archive'];
    final listSeason = FullType(BuiltList, [FullType(SeasonArchive)]);

    return serializers.deserialize(archive, specifiedType: listSeason);
  }

  Future<Schedule> getSchedule({WeekDay weekday}) async {
    var url = baseUrl + '/schedule/';
    if (weekday != null) {
      url += weekDayString(weekday);
    }

    print(url);
    var response = await http.get(url);

    return Schedule.fromJson(response.body);
  }

  Future<BuiltList<Top>> getTop(TopType type,
      {TopSubtype subtype, int page = 1}) async {
    var url = baseUrl + '/top/${topTypeString(type)}/$page';
    if (subtype != null) {
      url += '/${topSubtypeString(subtype)}';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var top = jsonEncoded['top'];
    final listTop = FullType(BuiltList, [FullType(Top)]);

    return serializers.deserialize(top, specifiedType: listTop);
  }

  Future<GenreList> getGenre(GenreType type, Genre genre,
      {int page = 1}) async {
    var url = baseUrl + '/genre/${genreTypeString(type)}/${genre.value}/$page';

    print(url);
    var response = await http.get(url);

    return GenreList.fromJson(response.body);
  }

  Future<Producer> getProducerInfo(int producerId, {int page = 1}) async {
    var url = baseUrl + '/producer/$producerId/$page';

    print(url);
    var response = await http.get(url);

    return Producer.fromJson(response.body);
  }

  Future<Magazine> getMagazineInfo(int magazineId, {int page = 1}) async {
    var url = baseUrl + '/magazine/$magazineId/$page';

    print(url);
    var response = await http.get(url);

    return Magazine.fromJson(response.body);
  }

  Future<UserProfile> getUserProfile(String username) async {
    var url = baseUrl + '/user/$username/profile';

    print(url);
    var response = await http.get(url);

    return UserProfile.fromJson(response.body);
  }

  Future<BuiltList<History>> getUserHistory(
      String username, HistoryType type) async {
    var url = baseUrl + '/user/$username/history/${historyTypeString(type)}';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var history = jsonEncoded['history'];
    final listHistory = FullType(BuiltList, [FullType(History)]);

    return serializers.deserialize(history, specifiedType: listHistory);
  }

  Future<BuiltList<Friend>> getUserFriends(String username) async {
    var url = baseUrl + '/user/$username/friends';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var friends = jsonEncoded['friends'];
    final listFriend = FullType(BuiltList, [FullType(Friend)]);

    return serializers.deserialize(friends, specifiedType: listFriend);
  }

  Future<BuiltList<UserItem>> getUserAnimeList(String username, ListType type,
      {String query, String order, String sort = 'desc', int page = 1}) async {
    var url =
        baseUrl + '/user/$username/animelist/${listTypeString(type)}/$page';
    if (query != null) {
      url += '?q=$query';
    }
    if (order != null) {
      url += url.contains('?') ? '&' : '?';
      url += 'order_by=$order&sort=$sort';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var anime = jsonEncoded['anime'];
    final listAnime = FullType(BuiltList, [FullType(UserItem)]);

    return serializers.deserialize(anime, specifiedType: listAnime);
  }

  Future<BuiltList<UserItem>> getUserMangaList(String username, ListType type,
      {String query, String order, String sort = 'desc', int page = 1}) async {
    var url =
        baseUrl + '/user/$username/mangalist/${listTypeString(type)}/$page';
    if (query != null) {
      url += '?q=$query';
    }
    if (order != null) {
      url += url.contains('?') ? '&' : '?';
      url += 'order_by=$order&sort=$sort';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var manga = jsonEncoded['manga'];
    final listManga = FullType(BuiltList, [FullType(UserItem)]);

    return serializers.deserialize(manga, specifiedType: listManga);
  }
}
