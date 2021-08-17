library promo;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'promo.g.dart';

abstract class Promo implements Built<Promo, PromoBuilder> {
  Promo._();

  factory Promo([Function(PromoBuilder b) updates]) = _$Promo;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  String toJson() {
    return json.encode(serializers.serializeWith(Promo.serializer, this));
  }

  static Promo fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Promo.serializer, jsonMap)!;
  }

  static Serializer<Promo> get serializer => _$promoSerializer;
}
