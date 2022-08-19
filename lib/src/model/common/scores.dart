library scores;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'scores.g.dart';

abstract class Scores implements Built<Scores, ScoresBuilder> {
  Scores._();

  factory Scores([Function(ScoresBuilder b) updates]) = _$Scores;

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
    return serializers.toJson(Scores.serializer, this);
  }

  static Scores fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Scores.serializer, jsonMap)!;
  }

  static Serializer<Scores> get serializer => _$scoresSerializer;
}
