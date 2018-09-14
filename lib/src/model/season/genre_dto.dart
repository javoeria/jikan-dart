library genre_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'genre_dto.g.dart';

abstract class GenreDto implements Built<GenreDto, GenreDtoBuilder> {
  GenreDto._();

  factory GenreDto([updates(GenreDtoBuilder b)]) = _$GenreDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(GenreDto.serializer, this));
  }

  static GenreDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenreDto.serializer, json.decode(jsonString));
  }

  static Serializer<GenreDto> get serializer => _$genreDtoSerializer;
}
