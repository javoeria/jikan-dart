import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_dart/src/model/anime_episodes_dto.dart';
import 'package:jikan_dart/src/model/article_dto.dart';
import 'package:jikan_dart/src/model/forum_dto.dart';
import 'package:jikan_dart/src/model/genre/genre_list_dto.dart';
import 'package:jikan_dart/src/model/genre/genre_type.dart';
import 'package:jikan_dart/src/model/manga/manga_character_dto.dart';
import 'package:jikan_dart/src/model/more_info_dto.dart';
import 'package:jikan_dart/src/model/picture_dto.dart';
import 'package:jikan_dart/src/model/promo_dto.dart';
import 'package:jikan_dart/src/model/schedule/schedule_dto.dart';
import 'package:jikan_dart/src/model/schedule/week_day.dart';
import 'package:jikan_dart/src/model/season/season.dart';
import 'package:jikan_dart/src/model/season/season_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/stats_dto.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:jikan_dart/src/model/top_type.dart';
import 'package:jikan_dart/src/request_type/anime_request_type.dart';

class JikanApi {
  final String baseUrl = 'https://api.jikan.moe/v3';

  Future<BuiltList<TopDto>> getTop(TopType type,
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

    final listTopDto = FullType(BuiltList, [FullType(TopDto)]);

    BuiltList<TopDto> topList =
        serializers.deserialize(tops, specifiedType: listTopDto);

    return topList;
  }

  Future<String> getAnime(int animeId, AnimeRequestType type) async {
    var url = baseUrl + '/anime/$animeId${type.toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return response.body;
  }

  Future<MoreInfoDto> getAnimeMoreInfo(int animeId) async {
    var url = baseUrl + '/anime/$animeId${MoreInfo().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    MoreInfoDto moreInfoDto = MoreInfoDto.fromJson(response.body);

    return moreInfoDto;
  }

  Future<AnimeEpisodesDto> getAnimeEpisodes(int animeId,
      {int episodes = 1}) async {
    var url =
        baseUrl + '/anime/$animeId${Episodes(pageNumber: episodes).toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return AnimeEpisodesDto.fromJson(response.body);
  }

  Future<BuiltList<ArticleDto>> getAnimeNews(int animeId) async {
    var url = baseUrl + '/anime/$animeId${News().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['articles'];

    final listTopDto = FullType(BuiltList, [FullType(ArticleDto)]);
    BuiltList<ArticleDto> articleList =
        serializers.deserialize(articles, specifiedType: listTopDto);

    return articleList;
  }

  Future<BuiltList<PictureDto>> getAnimePictures(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Pictures().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['pictures'];

    final listPictureDto = FullType(BuiltList, [FullType(PictureDto)]);
    BuiltList<PictureDto> pictureList =
        serializers.deserialize(articles, specifiedType: listPictureDto);

    return pictureList;
  }

  Future<BuiltList<PromoDto>> getAnimeVideos(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Videos().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var articles = jsonEncoded['promo'];

    final listPromoDto = FullType(BuiltList, [FullType(PromoDto)]);
    BuiltList<PromoDto> promoList =
        serializers.deserialize(articles, specifiedType: listPromoDto);

    return promoList;
  }

  Future<StatsDto> getAnimeStats(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Stats().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return StatsDto.fromJson(response.body);
  }

  Future<ForumDto> getAnimeForum(int animeId) async {
    var url = baseUrl + '/anime/$animeId${Forum().toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return ForumDto.fromJson(response.body);
  }

  Future<BuiltList<MangaCharacterDto>> getMangaCharacters(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/characters';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var mangaCharacters = jsonEncoded['characters'];

    final listPromoDto = FullType(BuiltList, [FullType(MangaCharacterDto)]);

    return serializers.deserialize(mangaCharacters,
        specifiedType: listPromoDto);
  }

  Future<BuiltList<ArticleDto>> getMangaNews(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/news';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var mangaNews = jsonEncoded['articles'];

    final listNewsDto = FullType(BuiltList, [FullType(ArticleDto)]);

    return serializers.deserialize(mangaNews, specifiedType: listNewsDto);
  }

  Future<BuiltList<PictureDto>> getMangaPictures(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNewsDto = FullType(BuiltList, [FullType(PictureDto)]);

    return serializers.deserialize(data, specifiedType: listNewsDto);
  }

  Future<StatsDto> getMangaStats(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';

    print('hitting url $url');
    var response = await http.get(url);

    return StatsDto.fromJson(response.body);
  }

  Future<ForumDto> getMangaForum(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/stats';

    print('hitting url $url');
    var response = await http.get(url);

    return ForumDto.fromJson(response.body);
  }

  Future<MoreInfoDto> getMangaMoreInfo(int mangaId) async {
    var url = baseUrl + '/manga/$mangaId/moreinfo';

    print('hitting url $url');
    var response = await http.get(url);

    return MoreInfoDto.fromJson(response.body);
  }

  Future<BuiltList<PictureDto>> getPersonPictures(int mangaId) async {
    var url = baseUrl + '/person/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNewsDto = FullType(BuiltList, [FullType(PictureDto)]);

    return serializers.deserialize(data, specifiedType: listNewsDto);
  }

  Future<BuiltList<PictureDto>> getCharactersPictures(int mangaId) async {
    var url = baseUrl + '/character/$mangaId/pictures';

    print('hitting url $url');
    var response = await http.get(url);

    var jsonEncoded = json.decode(response.body);

    var data = jsonEncoded['pictures'];

    final listNewsDto = FullType(BuiltList, [FullType(PictureDto)]);

    return serializers.deserialize(data, specifiedType: listNewsDto);
  }

  Future<SeasonDto> getSeason(int year, Season season) async {
    var url = baseUrl + '/season/$year/${season.toString()}';

    print('hitting url $url');
    var response = await http.get(url);

    return SeasonDto.fromJson(response.body);
  }

  Future<ScheduleDto> getSchedule({WeekDay weekday}) async {
    var url = baseUrl + '/schedule/';

    if (weekday != null) {
      url += weekday.toString();
    }

    print('hitting url $url');
    var response = await http.get(url);

    return ScheduleDto.fromJson(response.body);
  }

  Future<GenreListDto> getGenre(GenreType type, int genreId,  {int page = 1}) async {
    var url = baseUrl + '/genre/${type.toString()}/$genreId/$page';

    print('hitting url $url');
    var response = await http.get(url);

    return GenreListDto.fromJson(response.body);
  }
}
