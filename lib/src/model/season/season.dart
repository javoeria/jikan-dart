library season;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_item.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'season.g.dart';

abstract class Season implements Built<Season, SeasonBuilder> {
  Season._();

  factory Season([Function(SeasonBuilder b) updates]) = _$Season;

  @BuiltValueField(wireName: 'season_name')
  String get seasonName;

  @BuiltValueField(wireName: 'season_year')
  @nullable
  int get seasonYear;

  @BuiltValueField(wireName: 'anime')
  BuiltList<AnimeItem> get anime;

  String toJson() {
    return json.encode(serializers.serializeWith(Season.serializer, this));
  }

  static Season fromJson(String jsonString) {
    return serializers.deserializeWith(
        Season.serializer, json.decode(jsonString));
  }

  static Serializer<Season> get serializer => _$seasonSerializer;
}
