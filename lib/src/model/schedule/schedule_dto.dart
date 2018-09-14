library schedule_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/anime_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'schedule_dto.g.dart';

abstract class ScheduleDto implements Built<ScheduleDto, ScheduleDtoBuilder> {
  ScheduleDto._();

  factory ScheduleDto([updates(ScheduleDtoBuilder b)]) = _$ScheduleDto;

  @BuiltValueField(wireName: 'monday')
  @nullable
  BuiltList<AnimeDto> get monday;

  @BuiltValueField(wireName: 'tuesday')
  @nullable
  BuiltList<AnimeDto> get tuesday;

  @BuiltValueField(wireName: 'wednesday')
  @nullable
  BuiltList<AnimeDto> get wednesday;

  @BuiltValueField(wireName: 'thursday')
  @nullable
  BuiltList<AnimeDto> get thursday;

  @BuiltValueField(wireName: 'friday')
  @nullable
  BuiltList<AnimeDto> get friday;

  @BuiltValueField(wireName: 'saturday')
  @nullable
  BuiltList<AnimeDto> get saturday;

  @BuiltValueField(wireName: 'sunday')
  @nullable
  BuiltList<AnimeDto> get sunday;

  @BuiltValueField(wireName: 'other')
  @nullable
  BuiltList<AnimeDto> get other;

  @BuiltValueField(wireName: 'unknown')
  @nullable
  BuiltList<AnimeDto> get unknown;

  String toJson() {
    return json.encode(serializers.serializeWith(ScheduleDto.serializer, this));
  }

  static ScheduleDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ScheduleDto.serializer, json.decode(jsonString));
  }

  static Serializer<ScheduleDto> get serializer => _$scheduleDtoSerializer;
}
