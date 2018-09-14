library anime_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/genre_dto.dart';
import 'package:jikan_dart/src/model/season/producer_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_dto.g.dart';

abstract class AnimeDto implements Built<AnimeDto, AnimeDtoBuilder> {
  AnimeDto._();

  factory AnimeDto([updates(AnimeDtoBuilder b)]) = _$AnimeDto;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'synopsis')
  String get synopsis;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'airing_start')
  @nullable
  String get airingStart;

  @BuiltValueField(wireName: 'episodes')
  @nullable
  int get episodes;

  @BuiltValueField(wireName: 'members')
  int get members;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenreDto> get genres;

  @BuiltValueField(wireName: 'source')
  String get source;

  @BuiltValueField(wireName: 'producers')
  BuiltList<ProducerDto> get producers;

  @BuiltValueField(wireName: 'score')
  @nullable
  double get score;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<String> get licensors;

  @BuiltValueField(wireName: 'r18')
  bool get r18;

  @BuiltValueField(wireName: 'kids')
  bool get kids;

  @BuiltValueField(wireName: 'continuing')
  bool get continuing;

  String toJson() {
    return json.encode(serializers.serializeWith(AnimeDto.serializer, this));
  }

  static AnimeDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeDto.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeDto> get serializer => _$animeDtoSerializer;
}
