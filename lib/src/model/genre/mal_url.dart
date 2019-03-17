library mal_url_;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'mal_url.g.dart';

abstract class MalUrl implements Built<MalUrl, MalUrlBuilder> {
  MalUrl._();

  factory MalUrl([updates(MalUrlBuilder b)]) = _$MalUrl;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'url')
  String get url;
  String toJson() {
    return json.encode(serializers.serializeWith(MalUrl.serializer, this));
  }

  static MalUrl fromJson(String jsonString) {
    return serializers.deserializeWith(
        MalUrl.serializer, json.decode(jsonString));
  }

  static Serializer<MalUrl> get serializer => _$malUrlSerializer;
}
