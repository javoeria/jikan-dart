library more_info_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'more_info_dto.g.dart';

abstract class MoreInfoDto implements Built<MoreInfoDto, MoreInfoDtoBuilder> {
  MoreInfoDto._();

  factory MoreInfoDto([updates(MoreInfoDtoBuilder b)]) = _$MoreInfoDto;

  @BuiltValueField(wireName: 'moreinfo')
  String get moreinfo;

  String toJson() {
    return json.encode(serializers.serializeWith(MoreInfoDto.serializer, this));
  }

  static MoreInfoDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        MoreInfoDto.serializer, json.decode(jsonString));
  }

  static Serializer<MoreInfoDto> get serializer => _$moreInfoDtoSerializer;
}
