library recommendation_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'recommendation_dto.g.dart';

abstract class RecommendationDto
    implements Built<RecommendationDto, RecommendationDtoBuilder> {
  RecommendationDto._();

  factory RecommendationDto([updates(RecommendationDtoBuilder b)]) =
  _$RecommendationDto;

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
        .encode(serializers.serializeWith(RecommendationDto.serializer, this));
  }

  static RecommendationDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        RecommendationDto.serializer, json.decode(jsonString));
  }

  static Serializer<RecommendationDto> get serializer =>
      _$recommendationDtoSerializer;
}
