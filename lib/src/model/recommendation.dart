library recommendation;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'recommendation.g.dart';

abstract class Recommendation
    implements Built<Recommendation, RecommendationBuilder> {
  Recommendation._();

  factory Recommendation([updates(RecommendationBuilder b)]) =
  _$Recommendation;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;
  @BuiltValueField(wireName: 'recommendation_url')
  String get recommendationUrl;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'recommendation_count')
  int get recommendationCount;
  String toJson() {
    return json
        .encode(serializers.serializeWith(Recommendation.serializer, this));
  }

  static Recommendation fromJson(String jsonString) {
    return serializers.deserializeWith(
        Recommendation.serializer, json.decode(jsonString));
  }

  static Serializer<Recommendation> get serializer =>
      _$recommendationSerializer;
}
