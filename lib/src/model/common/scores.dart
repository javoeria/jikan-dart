library scores;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/score.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'scores.g.dart';

abstract class Scores implements Built<Scores, ScoresBuilder> {
  Scores._();

  factory Scores([Function(ScoresBuilder b) updates]) = _$Scores;

  @BuiltValueField(wireName: '10')
  Score get score10;

  @BuiltValueField(wireName: '9')
  Score get score9;

  @BuiltValueField(wireName: '8')
  Score get score8;

  @BuiltValueField(wireName: '7')
  Score get score7;

  @BuiltValueField(wireName: '6')
  Score get score6;

  @BuiltValueField(wireName: '5')
  Score get score5;

  @BuiltValueField(wireName: '4')
  Score get score4;

  @BuiltValueField(wireName: '3')
  Score get score3;

  @BuiltValueField(wireName: '2')
  Score get score2;

  @BuiltValueField(wireName: '1')
  Score get score1;

  String toJson() {
    return json.encode(serializers.serializeWith(Scores.serializer, this));
  }

  static Scores fromJson(String jsonString) {
    return serializers.deserializeWith(
        Scores.serializer, json.decode(jsonString));
  }

  static Serializer<Scores> get serializer => _$scoresSerializer;
}
