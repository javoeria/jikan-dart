library stats_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/scores_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'stats_dto.g.dart';

abstract class StatsDto implements Built<StatsDto, StatsDtoBuilder> {
  StatsDto._();

  factory StatsDto([updates(StatsDtoBuilder b)]) = _$StatsDto;

  @BuiltValueField(wireName: 'request_hash')
  String get requestHash;
  @BuiltValueField(wireName: 'request_cached')
  bool get requestCached;
  @BuiltValueField(wireName: 'request_cache_expiry')
  int get requestCacheExpiry;
  @BuiltValueField(wireName: 'watching')
  int get watching;
  @BuiltValueField(wireName: 'completed')
  int get completed;
  @BuiltValueField(wireName: 'on_hold')
  int get onHold;
  @BuiltValueField(wireName: 'dropped')
  int get dropped;
  @BuiltValueField(wireName: 'plan_to_watch')
  int get planToWatch;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'scores')
  ScoresDto get scores;

  String toJson() {
    return json.encode(serializers.serializeWith(StatsDto.serializer, this));
  }

  static StatsDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        StatsDto.serializer, json.decode(jsonString));
  }

  static Serializer<StatsDto> get serializer => _$statsDtoSerializer;
}
