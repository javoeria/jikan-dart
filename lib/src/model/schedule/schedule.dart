library schedule;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_item.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'schedule.g.dart';

abstract class Schedule implements Built<Schedule, ScheduleBuilder> {
  Schedule._();

  factory Schedule([Function(ScheduleBuilder b) updates]) = _$Schedule;

  @BuiltValueField(wireName: 'monday')
  BuiltList<AnimeItem>? get monday;

  @BuiltValueField(wireName: 'tuesday')
  BuiltList<AnimeItem>? get tuesday;

  @BuiltValueField(wireName: 'wednesday')
  BuiltList<AnimeItem>? get wednesday;

  @BuiltValueField(wireName: 'thursday')
  BuiltList<AnimeItem>? get thursday;

  @BuiltValueField(wireName: 'friday')
  BuiltList<AnimeItem>? get friday;

  @BuiltValueField(wireName: 'saturday')
  BuiltList<AnimeItem>? get saturday;

  @BuiltValueField(wireName: 'sunday')
  BuiltList<AnimeItem>? get sunday;

  @BuiltValueField(wireName: 'other')
  BuiltList<AnimeItem>? get other;

  @BuiltValueField(wireName: 'unknown')
  BuiltList<AnimeItem>? get unknown;

  String toJson() {
    return serializers.toJson(Schedule.serializer, this);
  }

  static Schedule fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Schedule.serializer, jsonMap)!;
  }

  static Serializer<Schedule> get serializer => _$scheduleSerializer;
}
