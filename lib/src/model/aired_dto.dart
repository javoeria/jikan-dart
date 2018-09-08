library aired_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'aired_dto.g.dart';

abstract class AiredDto implements Built<AiredDto, AiredDtoBuilder> {
  AiredDto._();

  factory AiredDto([updates(AiredDtoBuilder b)]) = _$AiredDto;

  @BuiltValueField(wireName: 'from')
  @nullable
  String get from;

  @BuiltValueField(wireName: 'to')
  @nullable
  String get to;

  @BuiltValueField(wireName: 'string')
  @nullable
  String get string;

  String toJson() {
    return json.encode(serializers.serializeWith(AiredDto.serializer, this));
  }

  static AiredDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        AiredDto.serializer, json.decode(jsonString));
  }

  static Serializer<AiredDto> get serializer => _$airedDtoSerializer;
}
