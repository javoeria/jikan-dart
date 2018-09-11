library promo_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'promo_dto.g.dart';

abstract class PromoDto implements Built<PromoDto, PromoDtoBuilder> {
  PromoDto._();

  factory PromoDto([updates(PromoDtoBuilder b)]) = _$PromoDto;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  String toJson() {
    return json.encode(serializers.serializeWith(PromoDto.serializer, this));
  }

  static PromoDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        PromoDto.serializer, json.decode(jsonString));
  }

  static Serializer<PromoDto> get serializer => _$promoDtoSerializer;
}
