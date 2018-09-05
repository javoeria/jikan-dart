import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:jikan_dart/src/model/top_type.dart';

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

  Future<String> getAnime() async {}
}
