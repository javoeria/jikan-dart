library schedule;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/anime.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'schedule.g.dart';

abstract class Schedule implements Built<Schedule, ScheduleBuilder> {
  Schedule._();

  factory Schedule([updates(ScheduleBuilder b)]) = _$Schedule;

  @BuiltValueField(wireName: 'monday')
  @nullable
  BuiltList<Anime> get monday;

  @BuiltValueField(wireName: 'tuesday')
  @nullable
  BuiltList<Anime> get tuesday;

  @BuiltValueField(wireName: 'wednesday')
  @nullable
  BuiltList<Anime> get wednesday;

  @BuiltValueField(wireName: 'thursday')
  @nullable
  BuiltList<Anime> get thursday;

  @BuiltValueField(wireName: 'friday')
  @nullable
  BuiltList<Anime> get friday;

  @BuiltValueField(wireName: 'saturday')
  @nullable
  BuiltList<Anime> get saturday;

  @BuiltValueField(wireName: 'sunday')
  @nullable
  BuiltList<Anime> get sunday;

  @BuiltValueField(wireName: 'other')
  @nullable
  BuiltList<Anime> get other;

  @BuiltValueField(wireName: 'unknown')
  @nullable
  BuiltList<Anime> get unknown;

  String toJson() {
    return json.encode(serializers.serializeWith(Schedule.serializer, this));
  }

  static Schedule fromJson(String jsonString) {
    return serializers.deserializeWith(
        Schedule.serializer, json.decode(jsonString));
  }

  static Serializer<Schedule> get serializer => _$scheduleSerializer;
}
