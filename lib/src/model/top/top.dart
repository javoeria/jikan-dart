library top;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'top.g.dart';

abstract class Top implements Built<Top, TopBuilder> {
  Top._();

  factory Top([Function(TopBuilder b) updates]) = _$Top;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'rank')
  int get rank;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'episodes')
  int? get episodes;

  @BuiltValueField(wireName: 'volumes')
  int? get volumes;

  @BuiltValueField(wireName: 'start_date')
  String? get startDate;

  @BuiltValueField(wireName: 'end_date')
  String? get endDate;

  @BuiltValueField(wireName: 'members')
  int? get members;

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'score')
  double? get score;

  String toJson() {
    return json.encode(serializers.serializeWith(Top.serializer, this));
  }

  static Top fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Top.serializer, jsonMap)!;
  }

  static Serializer<Top> get serializer => _$topSerializer;
}
