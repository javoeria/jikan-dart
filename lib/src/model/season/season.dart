library season;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/anime.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'season.g.dart';

abstract class Season implements Built<Season, SeasonBuilder> {
  Season._();

  factory Season([updates(SeasonBuilder b)]) = _$Season;

  @BuiltValueField(wireName: 'request_hash')
  String get requestHash;

  @BuiltValueField(wireName: 'request_cached')
  bool get requestCached;

  @BuiltValueField(wireName: 'request_cache_expiry')
  int get requestCacheExpiry;

  @BuiltValueField(wireName: 'season_name')
  String get seasonName;

  @BuiltValueField(wireName: 'season_year')
  int get seasonYear;

  @BuiltValueField(wireName: 'anime')
  BuiltList<Anime> get anime;

  String toJson() {
    return json.encode(serializers.serializeWith(Season.serializer, this));
  }

  static Season fromJson(String jsonString) {
    return serializers.deserializeWith(
        Season.serializer, json.decode(jsonString));
  }

  static Serializer<Season> get serializer => _$seasonSerializer;
}
