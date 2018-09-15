library mal_url_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'mal_url_dto.g.dart';

abstract class MalUrlDto implements Built<MalUrlDto, MalUrlDtoBuilder> {
  MalUrlDto._();

  factory MalUrlDto([updates(MalUrlDtoBuilder b)]) = _$MalUrlDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'url')
  String get url;
  String toJson() {
    return json.encode(serializers.serializeWith(MalUrlDto.serializer, this));
  }

  static MalUrlDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        MalUrlDto.serializer, json.decode(jsonString));
  }

  static Serializer<MalUrlDto> get serializer => _$malUrlDtoSerializer;
}
