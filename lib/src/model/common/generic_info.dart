library generic_info;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'generic_info.g.dart';

abstract class GenericInfo implements Built<GenericInfo, GenericInfoBuilder> {
  GenericInfo._();

  factory GenericInfo([Function(GenericInfoBuilder b) updates]) = _$GenericInfo;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(GenericInfo.serializer, this));
  }

  static GenericInfo fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(GenericInfo.serializer, jsonMap)!;
  }

  static Serializer<GenericInfo> get serializer => _$genericInfoSerializer;
}
