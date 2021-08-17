library review_score;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'review_score.g.dart';

abstract class ReviewScore implements Built<ReviewScore, ReviewScoreBuilder> {
  ReviewScore._();

  factory ReviewScore([Function(ReviewScoreBuilder b) updates]) = _$ReviewScore;

  @BuiltValueField(wireName: 'overall')
  int get overall;

  @BuiltValueField(wireName: 'story')
  int get story;

  @BuiltValueField(wireName: 'animation')
  int? get animation;

  @BuiltValueField(wireName: 'sound')
  int? get sound;

  @BuiltValueField(wireName: 'art')
  int? get art;

  @BuiltValueField(wireName: 'character')
  int get character;

  @BuiltValueField(wireName: 'enjoyment')
  int get enjoyment;

  String toJson() {
    return json.encode(serializers.serializeWith(ReviewScore.serializer, this));
  }

  static ReviewScore fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(ReviewScore.serializer, jsonMap)!;
  }

  static Serializer<ReviewScore> get serializer => _$reviewScoreSerializer;
}
