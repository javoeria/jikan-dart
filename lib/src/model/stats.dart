library stats;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/scores.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'stats.g.dart';

abstract class Stats implements Built<Stats, StatsBuilder> {
  Stats._();

  factory Stats([updates(StatsBuilder b)]) = _$Stats;

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
  Scores get scores;

  String toJson() {
    return json.encode(serializers.serializeWith(Stats.serializer, this));
  }

  static Stats fromJson(String jsonString) {
    return serializers.deserializeWith(
        Stats.serializer, json.decode(jsonString));
  }

  static Serializer<Stats> get serializer => _$statsSerializer;
}
