library producer_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producer_dto.g.dart';

abstract class ProducerDto implements Built<ProducerDto, ProducerDtoBuilder> {
  ProducerDto._();

  factory ProducerDto([updates(ProducerDtoBuilder b)]) = _$ProducerDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(ProducerDto.serializer, this));
  }

  static ProducerDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProducerDto.serializer, json.decode(jsonString));
  }

  static Serializer<ProducerDto> get serializer => _$producerDtoSerializer;
}
