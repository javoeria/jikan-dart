library score_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'score_dto.g.dart';

abstract class ScoreDto implements Built<ScoreDto, ScoreDtoBuilder> {
  ScoreDto._();

  factory ScoreDto([updates(ScoreDtoBuilder b)]) = _$ScoreDto;

  @BuiltValueField(wireName: 'votes')
  int get votes;
  @BuiltValueField(wireName: 'percentage')
  double get percentage;
  String toJson() {
    return json.encode(serializers.serializeWith(ScoreDto.serializer, this));
  }

  static ScoreDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ScoreDto.serializer, json.decode(jsonString));
  }

  static Serializer<ScoreDto> get serializer => _$scoreDtoSerializer;
}
