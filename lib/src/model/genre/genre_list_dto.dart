library genre_list_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/genre/mal_url_dto.dart';
import 'package:jikan_dart/src/model/season/anime_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'genre_list_dto.g.dart';

abstract class GenreListDto
    implements Built<GenreListDto, GenreListDtoBuilder> {
  GenreListDto._();

  factory GenreListDto([updates(GenreListDtoBuilder b)]) = _$GenreListDto;

  @BuiltValueField(wireName: 'mal_url')
  MalUrlDto get malUrl;
  @BuiltValueField(wireName: 'item_count')
  int get itemCount;
  @BuiltValueField(wireName: 'anime')
  @nullable
  BuiltList<AnimeDto> get anime;
  @BuiltValueField(wireName: 'manga')
  @nullable
  BuiltList<AnimeDto> get manga;

  String toJson() {
    return json
        .encode(serializers.serializeWith(GenreListDto.serializer, this));
  }

  static GenreListDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenreListDto.serializer, json.decode(jsonString));
  }

  static Serializer<GenreListDto> get serializer => _$genreListDtoSerializer;
}
