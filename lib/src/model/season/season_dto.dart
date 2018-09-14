library season_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/anime_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'season_dto.g.dart';

abstract class SeasonDto implements Built<SeasonDto, SeasonDtoBuilder> {
  SeasonDto._();

  factory SeasonDto([updates(SeasonDtoBuilder b)]) = _$SeasonDto;

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
  BuiltList<AnimeDto> get anime;
  String toJson() {
    return json.encode(serializers.serializeWith(SeasonDto.serializer, this));
  }

  static SeasonDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        SeasonDto.serializer, json.decode(jsonString));
  }

  static Serializer<SeasonDto> get serializer => _$seasonDtoSerializer;
}