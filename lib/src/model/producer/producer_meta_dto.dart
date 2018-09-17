library producer_meta_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producer_meta_dto.g.dart';

abstract class ProducerMetaDto
    implements Built<ProducerMetaDto, ProducerMetaDtoBuilder> {
  ProducerMetaDto._();

  factory ProducerMetaDto([updates(ProducerMetaDtoBuilder b)]) =
      _$ProducerMetaDto;

  @BuiltValueField(wireName: 'mal_id')
  @nullable
  int get malId;
  
  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'url')
  @nullable
  String get url;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProducerMetaDto.serializer, this));
  }

  static ProducerMetaDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProducerMetaDto.serializer, json.decode(jsonString));
  }

  static Serializer<ProducerMetaDto> get serializer =>
      _$producerMetaDtoSerializer;
}
