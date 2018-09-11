library scores_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/score_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'scores_dto.g.dart';

abstract class ScoresDto implements Built<ScoresDto, ScoresDtoBuilder> {
  ScoresDto._();

  factory ScoresDto([updates(ScoresDtoBuilder b)]) = _$ScoresDto;

  @BuiltValueField(wireName: '10')
  @nullable
  ScoreDto get score10;

  @BuiltValueField(wireName: '9')
  @nullable
  ScoreDto get score9;

  @BuiltValueField(wireName: '8')
  @nullable
  ScoreDto get score8;

  @BuiltValueField(wireName: '7')
  @nullable
  ScoreDto get score7;

  @BuiltValueField(wireName: '6')
  @nullable
  ScoreDto get score6;

  @BuiltValueField(wireName: '5')
  @nullable
  ScoreDto get score5;

  @BuiltValueField(wireName: '4')
  @nullable
  ScoreDto get score4;

  @BuiltValueField(wireName: '3')
  @nullable
  ScoreDto get score3;

  @BuiltValueField(wireName: '2')
  @nullable
  ScoreDto get score2;

  @BuiltValueField(wireName: '1')
  @nullable
  ScoreDto get score1;

  String toJson() {
    return json.encode(serializers.serializeWith(ScoresDto.serializer, this));
  }

  static ScoresDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ScoresDto.serializer, json.decode(jsonString));
  }

  static Serializer<ScoresDto> get serializer => _$scoresDtoSerializer;
}
