library top;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'top.g.dart';

abstract class Top implements Built<Top, TopBuilder> {
  Top._();

  factory Top([updates(TopBuilder b)]) = _$Top;

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
  String get type;

  @BuiltValueField(wireName: 'episodes')
  @nullable
  int get episodes;

  @BuiltValueField(wireName: 'start_date')
  @nullable
  String get startDate;

  @BuiltValueField(wireName: 'end_date')
  @nullable
  String get endDate;

  @BuiltValueField(wireName: 'members')
  int get members;

  @BuiltValueField(wireName: 'score')
  double get score;

  String toJson() {
    return json.encode(serializers.serializeWith(Top.serializer, this));
  }

  static Top fromJson(String jsonString) {
    return serializers.deserializeWith(Top.serializer, json.decode(jsonString));
  }

  static Serializer<Top> get serializer => _$topSerializer;
}
