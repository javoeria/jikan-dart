library meta;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'meta.g.dart';

abstract class Meta implements Built<Meta, MetaBuilder> {
  Meta._();

  factory Meta([updates(MetaBuilder b)]) = _$Meta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(Meta.serializer, this));
  }

  static Meta fromJson(String jsonString) {
    return serializers.deserializeWith(
        Meta.serializer, json.decode(jsonString));
  }

  static Serializer<Meta> get serializer => _$metaSerializer;
}
