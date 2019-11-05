library review_score;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'review_score.g.dart';

abstract class ReviewScore implements Built<ReviewScore, ReviewScoreBuilder> {
  ReviewScore._();

  factory ReviewScore([updates(ReviewScoreBuilder b)]) = _$ReviewScore;

  @BuiltValueField(wireName: 'overall')
  int get overall;

  @BuiltValueField(wireName: 'story')
  int get story;

  @BuiltValueField(wireName: 'animation')
  @nullable
  int get animation;

  @BuiltValueField(wireName: 'sound')
  @nullable
  int get sound;

  @BuiltValueField(wireName: 'art')
  @nullable
  int get art;

  @BuiltValueField(wireName: 'character')
  int get character;

  @BuiltValueField(wireName: 'enjoyment')
  int get enjoyment;

  String toJson() {
    return json.encode(serializers.serializeWith(ReviewScore.serializer, this));
  }

  static ReviewScore fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReviewScore.serializer, json.decode(jsonString));
  }

  static Serializer<ReviewScore> get serializer => _$reviewScoreSerializer;
}
