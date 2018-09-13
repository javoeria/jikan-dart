library manga_character_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_character_dto.g.dart';

abstract class MangaCharacterDto
    implements Built<MangaCharacterDto, MangaCharacterDtoBuilder> {
  MangaCharacterDto._();

  factory MangaCharacterDto([updates(MangaCharacterDtoBuilder b)]) =
  _$MangaCharacterDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'role')
  String get role;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MangaCharacterDto.serializer, this));
  }

  static MangaCharacterDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        MangaCharacterDto.serializer, json.decode(jsonString));
  }

  static Serializer<MangaCharacterDto> get serializer =>
      _$mangaCharacterDtoSerializer;
}
