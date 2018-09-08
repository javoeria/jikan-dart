import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_dart/src/model/anime_episodes_dto.dart';
import 'package:jikan_dart/src/model/article_dto.dart';
import 'package:jikan_dart/src/model/more_info_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';
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
}
