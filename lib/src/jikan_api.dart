import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_dart/src/model/anime_episode.dart';
import 'package:jikan_dart/src/model/article.dart';
import 'package:jikan_dart/src/model/character_staff.dart';
import 'package:jikan_dart/src/model/forum.dart';
import 'package:jikan_dart/src/model/genre/genre.dart';
import 'package:jikan_dart/src/model/genre/genre_list.dart';
import 'package:jikan_dart/src/model/genre/genre_type.dart';
import 'package:jikan_dart/src/model/info/anime_info.dart';
import 'package:jikan_dart/src/model/info/character_info.dart';
import 'package:jikan_dart/src/model/info/manga_info.dart';
import 'package:jikan_dart/src/model/info/person_info.dart';
import 'package:jikan_dart/src/model/manga/manga_character.dart';
import 'package:jikan_dart/src/model/manga/manga_user_update.dart';
import 'package:jikan_dart/src/model/more_info.dart';
import 'package:jikan_dart/src/model/picture.dart';
import 'package:jikan_dart/src/model/producer/producers.dart';
import 'package:jikan_dart/src/model/promo.dart';
import 'package:jikan_dart/src/model/recommendation.dart';
import 'package:jikan_dart/src/model/review.dart';
import 'package:jikan_dart/src/model/schedule/schedule.dart';
import 'package:jikan_dart/src/model/schedule/week_day.dart';
import 'package:jikan_dart/src/model/search.dart';
import 'package:jikan_dart/src/model/search_type.dart';
import 'package:jikan_dart/src/model/season/season.dart';
import 'package:jikan_dart/src/model/season/season_archive.dart';
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
import 'package:jikan_dart/src/model/anime_user_update.dart';

class JikanApi {
  final String baseUrl = 'https://api.jikan.moe/v3';

  Future<BuiltList<Search>> search(SearchType type,
      {String query, int page}) async {
    var url = baseUrl + '/search/${searchTypeToString(type)}?q=$query';
    if (page != null) {
      url += '&page=$page';
    }

    print(url);
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
    var url = baseUrl + '/top/${topTypeToString(type)}';
    if (page != null) {
      url += '/$page';
    }
    if (subtype != null) {
      url += '/${topSubtypeToString(subtype)}';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var tops = jsonEncoded['top'];
    final listTop = FullType(BuiltList, [FullType(Top)]);
    BuiltList<Top> topList =
        serializers.deserialize(tops, specifiedType: listTop);

    return topList;
  }

  Future<MoreInfo> getAnimeMoreInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId/moreinfo';

    print(url);
    var response = await http.get(url);

    return MoreInfo.fromJson(response.body);
  }

  Future<BuiltList<AnimeEpisode>> getAnimeEpisodes(int animeId,
      {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/episodes/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var episodes = jsonEncoded['episodes'];
    final listTop = FullType(BuiltList, [FullType(AnimeEpisode)]);
    BuiltList<AnimeEpisode> episodeList =
        serializers.deserialize(episodes, specifiedType: listTop);

    return episodeList;
  }

  Future<BuiltList<Article>> getAnimeNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId/news';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var articles = jsonEncoded['articles'];
    final listTop = FullType(BuiltList, [FullType(Article)]);
    BuiltList<Article> articleList =
        serializers.deserialize(articles, specifiedType: listTop);

    return articleList;
  }

  Future<BuiltList<Picture>> getAnimePictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var articles = jsonEncoded['pictures'];
    final listPicture = FullType(BuiltList, [FullType(Picture)]);
    BuiltList<Picture> pictureList =
        serializers.deserialize(articles, specifiedType: listPicture);

    return pictureList;
  }

  Future<BuiltList<Promo>> getAnimeVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId/videos';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var articles = jsonEncoded['promo'];
    final listPromo = FullType(BuiltList, [FullType(Promo)]);
    BuiltList<Promo> promoList =
        serializers.deserialize(articles, specifiedType: listPromo);

    return promoList;
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
    BuiltList<Forum> forumList =
        serializers.deserialize(topics, specifiedType: listForum);

    return forumList;
  }

  Future<BuiltList<Review>> getAnimeReviews(int animeId, {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/reviews/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var reviews = jsonEncoded['reviews'];
    final listRecommendation = FullType(BuiltList, [FullType(Review)]);
    BuiltList<Review> reviewList =
        serializers.deserialize(reviews, specifiedType: listRecommendation);

    return reviewList;
  }

  Future<BuiltList<Recommendation>> getAnimeRecommendations(int animeId) async {
    var url = baseUrl + '/anime/$animeId/recommendations';

    print(url);
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

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var mangaCharacters = jsonEncoded['characters'];
    final listPromo = FullType(BuiltList, [FullType(MangaCharacter)]);

    return serializers.deserialize(mangaCharacters, specifiedType: listPromo);
  }

  Future<BuiltList<Article>> getMangaNews(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/news';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var mangaNews = jsonEncoded['articles'];
    final listNews = FullType(BuiltList, [FullType(Article)]);

    return serializers.deserialize(mangaNews, specifiedType: listNews);
  }

  Future<BuiltList<Picture>> getMangaPictures(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var data = jsonEncoded['pictures'];
    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
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
    BuiltList<Forum> forumList =
        serializers.deserialize(topics, specifiedType: listForum);

    return forumList;
  }

  Future<MoreInfo> getMangaMoreInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/moreinfo';

    print(url);
    var response = await http.get(url);

    return MoreInfo.fromJson(response.body);
  }

  Future<BuiltList<Recommendation>> getMangaRecommendations(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/recommendations';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var recommendations = jsonEncoded['recommendations'];
    final listRecommendation = FullType(BuiltList, [FullType(Recommendation)]);
    BuiltList<Recommendation> recommendationList = serializers
        .deserialize(recommendations, specifiedType: listRecommendation);

    return recommendationList;
  }

  Future<BuiltList<Review>> getMangaReviews(int mangaId, {int page = 1}) async {
    var url = baseUrl + '/manga/$mangaId/reviews/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var reviews = jsonEncoded['reviews'];
    final listRecommendation = FullType(BuiltList, [FullType(Review)]);
    BuiltList<Review> reviewList =
        serializers.deserialize(reviews, specifiedType: listRecommendation);

    return reviewList;
  }

  Future<BuiltList<Picture>> getPersonPictures(int personId) async {
    var url = baseUrl + '/person/$personId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var data = jsonEncoded['pictures'];
    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
  }

  Future<BuiltList<Picture>> getCharactersPictures(int characterId) async {
    var url = baseUrl + '/character/$characterId/pictures';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var data = jsonEncoded['pictures'];
    final listNews = FullType(BuiltList, [FullType(Picture)]);

    return serializers.deserialize(data, specifiedType: listNews);
  }

  Future<Season> getSeason(int year, SeasonType season) async {
    var url = baseUrl + '/season/$year/${season.toString()}';

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

  Future<Schedule> getSchedule({WeekDay weekday}) async {
    var url = baseUrl + '/schedule/';
    if (weekday != null) {
      url += weekday.toString();
    }

    print(url);
    var response = await http.get(url);

    return Schedule.fromJson(response.body);
  }

  Future<GenreList> getGenre(GenreType type, Genre genre,
      {int page = 1}) async {
    var url = baseUrl + '/genre/${type.toString()}/${genre.value}/$page';

    print(url);
    var response = await http.get(url);

    return GenreList.fromJson(response.body);
  }

  Future<Producers> getProducers(int producerId, {int page = 1}) async {
    var url = baseUrl + '/producer/$producerId/$page';

    print(url);
    var response = await http.get(url);

    return Producers.fromJson(response.body);
  }

  Future<Producers> getMagazines(int magazineId, {int page = 1}) async {
    var url = baseUrl + '/magazine/$magazineId/$page';

    print(url);
    var response = await http.get(url);

    return Producers.fromJson(response.body);
  }

  Future<ProfileResult> getUserProfile(String username) async {
    var url = baseUrl + '/user/$username/profile';

    print(url);
    var response = await http.get(url);

    return ProfileResult.fromJson(response.body);
  }

  Future<BuiltList<HistoryResult>> getUserHistory(
      String username, HistoryType historyType) async {
    var url = baseUrl + '/user/$username/history${historyType.toString()}';

    print(url);
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

    print(url);
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
      {String order, int page = 1}) async {
    var url = baseUrl + '/user/$username/animelist${listType.toString()}/$page';
    if (order != null) {
      url += '?order_by=$order&sort=desc';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var results = jsonEncoded['anime'];
    final listAnime = FullType(BuiltList, [FullType(AnimeItem)]);

    return serializers.deserialize(results, specifiedType: listAnime);
  }

  Future<BuiltList<MangaItem>> getUserMangaList(
      String username, MangaAnimeListType listType,
      {String order, int page = 1}) async {
    var url = baseUrl + '/user/$username/mangalist${listType.toString()}/$page';
    if (order != null) {
      url += '?order_by=$order&sort=desc';
    }

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var results = jsonEncoded['manga'];
    final listManga = FullType(BuiltList, [FullType(MangaItem)]);

    return serializers.deserialize(results, specifiedType: listManga);
  }

  Future<CharacterStaff> getCharacterStaff(int animeId) async {
    var url = baseUrl + '/anime/$animeId/characters_staff';

    print(url);
    var response = await http.get(url);

    return CharacterStaff.fromJson(response.body);
  }

  Future<BuiltList<AnimeUserUpdate>> getUserUpdates(int animeId,
      {int page = 1}) async {
    var url = baseUrl + '/anime/$animeId/userupdates/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var userUpdates = jsonEncoded['users'];
    final listUserUpdate = FullType(BuiltList, [FullType(AnimeUserUpdate)]);
    BuiltList<AnimeUserUpdate> userUpdateList =
        serializers.deserialize(userUpdates, specifiedType: listUserUpdate);

    return userUpdateList;
  }

  Future<BuiltList<MangaUserUpdate>> getMangaUserUpdate(int mangaId,
      {int page = 1}) async {
    var url = baseUrl + '/manga/$mangaId/userupdates/$page';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var userUpdates = jsonEncoded['users'];
    final listUserUpdate = FullType(BuiltList, [FullType(MangaUserUpdate)]);
    BuiltList<MangaUserUpdate> userUpdateList =
        serializers.deserialize(userUpdates, specifiedType: listUserUpdate);

    return userUpdateList;
  }

  Future<BuiltList<SeasonArchive>> getSeasonArchive() async {
    var url = baseUrl + '/season/archive';

    print(url);
    var response = await http.get(url);
    var jsonEncoded = json.decode(response.body);
    var seasons = jsonEncoded['archive'];
    final listSeasons = FullType(BuiltList, [FullType(SeasonArchive)]);
    BuiltList<SeasonArchive> seasonList =
        serializers.deserialize(seasons, specifiedType: listSeasons);

    return seasonList;
  }

  Future<CharacterInfo> getCharacterInfo(int malId) async {
    var url = baseUrl + '/character/$malId';

    print(url);
    var response = await http.get(url);

    return CharacterInfo.fromJson(response.body);
  }

  Future<PersonInfo> getPersonInfo(int malId) async {
    var url = baseUrl + '/person/$malId';

    print(url);
    var response = await http.get(url);

    return PersonInfo.fromJson(response.body);
  }

  Future<MangaInfo> getMangaInfo(int malId) async {
    var url = baseUrl + '/manga/$malId';

    print(url);
    var response = await http.get(url);

    return MangaInfo.fromJson(response.body);
  }

  Future<AnimeInfo> getAnimeInfo(int malId) async {
    var url = baseUrl + '/anime/$malId';

    print(url);
    var response = await http.get(url);

    return AnimeInfo.fromJson(response.body);
  }
}
