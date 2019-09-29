import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_dart/src/model/anime_episodes.dart';
import 'package:jikan_dart/src/model/article.dart';
import 'package:jikan_dart/src/model/forum.dart';
import 'package:jikan_dart/src/model/genre/genre.dart';
import 'package:jikan_dart/src/model/genre/genre_list.dart';
import 'package:jikan_dart/src/model/genre/genre_type.dart';
import 'package:jikan_dart/src/model/manga/manga_character.dart';
import 'package:jikan_dart/src/model/more_info.dart';
import 'package:jikan_dart/src/model/picture.dart';
import 'package:jikan_dart/src/model/producer/producers.dart';
import 'package:jikan_dart/src/model/promo.dart';
import 'package:jikan_dart/src/model/recommendation.dart';
import 'package:jikan_dart/src/model/schedule/schedule.dart';
import 'package:jikan_dart/src/model/schedule/week_day.dart';
import 'package:jikan_dart/src/model/search.dart';
import 'package:jikan_dart/src/model/search_type.dart';
import 'package:jikan_dart/src/model/season/season.dart';
import 'package:jikan_dart/src/model/season/season_type.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/stats.dart';
import 'package:jikan_dart/src/model/top.dart';
import 'package:jikan_dart/src/model/top_type.dart';
import 'package:jikan_dart/src/model/user/anime_item.dart';
import 'package:jikan_dart/src/model/user/friend_result.dart';
import 'package:jikan_dart/src/model/user/history_result.dart';
import 'package:jikan_dart/src/model/user/manga_item.dart';
import 'package:jikan_dart/src/model/user/profile_result.dart';
import 'package:jikan_dart/src/model/user/user_request_type.dart';
import 'package:jikan_dart/src/request_type/anime_request_type.dart';

class JikanApi {
  final String baseUrl = 'https://api.jikan.moe/v3';

  Future<BuiltList<Search>> search(SearchType type,
      {String query, int page}) async {
    var url = baseUrl + '/search/${SearchTypeToString(type)}?q=$query';
    if (page != null) {
      url += '&page=$page';
    }

    print('calling url ${url}');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var results = jsonEncoded['results'];

    final listSearch = FullType(BuiltList, [FullType(Search)]);

    BuiltList<Search> searchList =
        serializers.deserialize(results, specifiedType: listSearch);

    return searchList;
  }

  Future<BuiltList<Top>> getTop(TopType type,
      {int page, TopSubtype subtype}) async {
    var url = baseUrl + '/top/${TopTypeToString(type)}';
    if (page != null) {
      url += '/$page';
    }
    if (subtype != null) {
      url += '/${TopSubtypeToString(subtype)}';
    }

    print('calling url ${url}');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var tops = jsonEncoded['top'];

    final listTop = FullType(BuiltList, [FullType(Top)]);

    BuiltList<Top> topList =
        serializers.deserialize(tops, specifiedType: listTop);

    return topList;
  }

  Future<String> getAnime(int animeId, AnimeRequestType type) async {
    var url = baseUrl + '/anime/$animeId${type.toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return response.body;
  }

  Future<MoreInfo> getAnimeMoreInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId${MoreInfo().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    MoreInfo moreInfo = MoreInfo.fromJson(response.body);

    return moreInfo;
  }

  Future<AnimeEpisodes> getAnimeEpisodes(int animeId,
      {int episodes = 1}) async {
    var url =
        baseUrl + '/anime/$animeId${Episodes(pageNumber: episodes).toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return AnimeEpisodes.fromJson(response.body);
  }

  Future<BuiltList<Article>> getAnimeNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId${News().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['articles'];

    final listTop = FullType(BuiltList, [FullType(Article)]);
    BuiltList<Article> articleList =
        serializers.deserialize(articles, specifiedType: listTop);

    return articleList;
  }

  Future<BuiltList<Picture>> getAnimePictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Pictures().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['pictures'];

    final listPicture = FullType(BuiltList, [FullType(Picture)]);
    BuiltList<Picture> pictureList =
        serializers.deserialize(articles, specifiedType: listPicture);

    return pictureList;
  }

  Future<BuiltList<Promo>> getAnimeVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Videos().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['promo'];

    final listPromo = FullType(BuiltList, [FullType(Promo)]);
    BuiltList<Promo> promoList =
        serializers.deserialize(articles, specifiedType: listPromo);

    return promoList;
  }

  Future<Stats> getAnimeStats(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Stats().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return Stats.fromJson(response.body);
  }

  Future<Forum> getAnimeForum(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Forum().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return Forum.fromJson(response.body);
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId) async {
    var url = baseUrl + '/anime/$animeId/recommendations';

    print('hitting url $url');
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);

    var recommendations = jsonEncoded['recommendations'];

    final listRecommendation = FullType(BuiltList, [FullType(Recommendation)]);
    BuiltList<Recommendation> recommendationList = serializers
        .deserialize(recommendations, specifiedType: listRecommendation);

    return recommendationList;
  }

  Future<BuiltList<MangaCharacter>> getMangaCharacters(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/characters';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var mangaCharacters = jsonEncoded['characters'];

    final listPromo = FullType(BuiltList, [FullType(MangaCharacter)]);

    return serializers.deserialize(mangaCharacters, specifiedType: listPromo);
  }

  Future<BuiltList<Article>> getMangaNews(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/news';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var mangaNews = jsonEncoded['articles'];

    final listNews = FullType(BuiltList, [FullType(Article)]);

    return serializers.deserialize(mangaNews, specifiedType: listNews);
  }

  Future<BuiltList<Picture>> getMangaPictures(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
  }

  Future<Stats> getMangaStats(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';

    print('hitting url $url');
    var response = await http.get(url);

    return Stats.fromJson(response.body);
  }

  Future<Forum> getMangaForum(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';

    print('hitting url $url');
    var response = await http.get(url);

    return Forum.fromJson(response.body);
  }

  Future<MoreInfo> getMangaMoreInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/moreinfo';

    print('hitting url $url');
    var response = await http.get(url);

    return MoreInfo.fromJson(response.body);
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/recommendations';

    print('hitting url $url');
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);

    var recommendations = jsonEncoded['recommendations'];

    final listRecommendation = FullType(BuiltList, [FullType(Recommendation)]);
    BuiltList<Recommendation> recommendationList = serializers
        .deserialize(recommendations, specifiedType: listRecommendation);

    return recommendationList;
  }

  Future<BuiltList<Picture>> getPersonPictures(int mangaId) async {
    var url = baseUrl + '/person/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
  }

  Future<BuiltList<Picture>> getCharactersPictures(int mangaId) async {
    var url = baseUrl + '/character/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
  }

  Future<Season> getSeason(int year, SeasonType season) async {
    var url = baseUrl + '/season/$year/${season.toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return Season.fromJson(response.body);
  }

  Future<Season> getSeasonLater() async {
    var url = baseUrl + '/season/later';

    print('hitting url $url');
    var response = await http.get(url);

    return Season.fromJson(response.body);
  }

  Future<Schedule> getSchedule({WeekDay weekday}) async {
    var url = baseUrl + '/schedule/';

    if (weekday != null) {
      url += weekday.toString();
    }

    print('hitting url $url');
    var response = await http.get(url);

    return Schedule.fromJson(response.body);
  }

  Future<GenreList> getGenre(GenreType type, Genre genre,
      {int page = 1}) async {
    var url = baseUrl + '/genre/${type.toString()}/${genre.value}/$page';

    print('hitting url $url');
    var response = await http.get(url);

    return GenreList.fromJson(response.body);
  }

  Future<Producers> getProducers(int producerId, {int page = 1}) async {
    var url = baseUrl + '/producer/$producerId/$page';

    print('hitting url $url');
    var response = await http.get(url);

    return Producers.fromJson(response.body);
  }

  // rename this class (Producers to something more abstract)
  Future<Producers> getMagazines(int magazineId, {int page = 1}) async {
    var url = baseUrl + '/producer/$magazineId/$page';

    var response = await http.get(url);

    return Producers.fromJson(response.body);
  }

  Future<String> getUser(String username, {UserRequestType request}) async {
    if (request == null) {
//      request = Profile();
    }

    var url = baseUrl + '/user/$username${request.toString()}';

    print('hitting $url');
    var response = await http.get(url);

    return response.body;
  }

  Future<ProfileResult> getUserProfile(String username) async {
    var url = baseUrl + '/user/$username/profile';

    print('hitting $url');
    var response = await http.get(url);

    return ProfileResult.fromJson(response.body);
  }

  Future<BuiltList<HistoryResult>> getUserHistory(
      String username, HistoryType historyType) async {
    var url = baseUrl + '/user/$username/history${historyType.toString()}';

    print('hitting $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var results = jsonEncoded['history'];

    final listHistory = FullType(BuiltList, [FullType(HistoryResult)]);

    BuiltList<HistoryResult> historyList =
        serializers.deserialize(results, specifiedType: listHistory);

    return historyList;
  }

  Future<BuiltList<FriendResult>> getUserFriends(String username) async {
    var url = baseUrl + '/user/$username/friends';

    print('calling url ${url}');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var results = jsonEncoded['friends'];

    final listFriends = FullType(BuiltList, [FullType(FriendResult)]);

    BuiltList<FriendResult> friendsList =
        serializers.deserialize(results, specifiedType: listFriends);

    return friendsList;
  }

  Future<BuiltList<AnimeItem>> getUserAnimeList(
      String username, MangaAnimeListType listType,
      {String order, int page}) async {
    var url = baseUrl + '/user/$username/animelist${listType.toString()}';
    if (order != null) {
      url += '?order_by=$order&sort=desc';
    }
    if (page != null) {
      url += order == null ? '?' : '&';
      url += 'page=$page';
    }

    print('calling url ${url}');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var results = jsonEncoded['anime'];

    final listAnime = FullType(BuiltList, [FullType(AnimeItem)]);

    return serializers.deserialize(results, specifiedType: listAnime);
  }

  Future<BuiltList<MangaItem>> getUserMangaList(
      String username, MangaAnimeListType listType,
      {String order, int page}) async {
    var url = baseUrl + '/user/$username/mangalist${listType.toString()}';
    if (order != null) {
      url += '?order_by=$order&sort=desc';
    }
    if (page != null) {
      url += order == null ? '?' : '&';
      url += 'page=$page';
    }

    print('calling url ${url}');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var results = jsonEncoded['manga'];

    final listManga = FullType(BuiltList, [FullType(MangaItem)]);

    return serializers.deserialize(results, specifiedType: listManga);
  }
}
