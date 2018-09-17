library producers_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/producer/producer_meta_dto.dart';
import 'package:jikan_dart/src/model/season/anime_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producers_dto.g.dart';

abstract class ProducersDto implements Built<ProducersDto, ProducersDtoBuilder> {
  ProducersDto._();

  factory ProducersDto([updates(ProducersDtoBuilder b)]) = _$ProducersDto;

  @BuiltValueField(wireName: 'meta')
  @nullable
  ProducerMetaDto get meta;

  @BuiltValueField(wireName: 'anime')
  @nullable
  BuiltList<AnimeDto> get anime;

  String toJson() {
    return json.encode(serializers.serializeWith(ProducersDto.serializer, this));
  }

  static ProducersDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProducersDto.serializer, json.decode(jsonString));
  }

  static Serializer<ProducersDto> get serializer => _$producersDtoSerializer;
}
