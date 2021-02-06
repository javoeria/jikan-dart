library stats;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/scores.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'stats.g.dart';

abstract class Stats implements Built<Stats, StatsBuilder> {
  Stats._();

  factory Stats([Function(StatsBuilder b) updates]) = _$Stats;

  @BuiltValueField(wireName: 'watching')
  @nullable
  int get watching;

  @BuiltValueField(wireName: 'reading')
  @nullable
  int get reading;

  @BuiltValueField(wireName: 'completed')
  int get completed;

  @BuiltValueField(wireName: 'on_hold')
  int get onHold;

  @BuiltValueField(wireName: 'dropped')
  int get dropped;

  @BuiltValueField(wireName: 'plan_to_watch')
  @nullable
  int get planToWatch;

  @BuiltValueField(wireName: 'plan_to_read')
  @nullable
  int get planToRead;

  @BuiltValueField(wireName: 'total')
  int get total;

  @BuiltValueField(wireName: 'scores')
  Scores get scores;

  String toJson() {
    return json.encode(serializers.serializeWith(Stats.serializer, this));
  }

  static Stats fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Stats.serializer, jsonMap);
  }

  static Serializer<Stats> get serializer => _$statsSerializer;
}
