library meta_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'meta_dto.g.dart';

abstract class MetaDto implements Built<MetaDto, MetaDtoBuilder> {
  MetaDto._();

  factory MetaDto([updates(MetaDtoBuilder b)]) = _$MetaDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'url')
  String get url;
  String toJson() {
    return json.encode(serializers.serializeWith(MetaDto.serializer, this));
  }

  static MetaDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        MetaDto.serializer, json.decode(jsonString));
  }

  static Serializer<MetaDto> get serializer => _$metaDtoSerializer;
}
