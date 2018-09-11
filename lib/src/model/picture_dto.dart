library picture_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'picture_dto.g.dart';

abstract class PictureDto implements Built<PictureDto, PictureDtoBuilder> {
  PictureDto._();

  factory PictureDto([updates(PictureDtoBuilder b)]) = _$PictureDto;

  @BuiltValueField(wireName: 'large')
  String get large;
  @BuiltValueField(wireName: 'small')
  String get small;
  String toJson() {
    return json.encode(serializers.serializeWith(PictureDto.serializer, this));
  }

  static PictureDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        PictureDto.serializer, json.decode(jsonString));
  }

  static Serializer<PictureDto> get serializer => _$pictureDtoSerializer;
}
