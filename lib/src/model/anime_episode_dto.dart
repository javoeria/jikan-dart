library anime_episode_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/aired_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_episode_dto.g.dart';

abstract class AnimeEpisodeDto
    implements Built<AnimeEpisodeDto, AnimeEpisodeDtoBuilder> {
  AnimeEpisodeDto._();

  factory AnimeEpisodeDto([updates(AnimeEpisodeDtoBuilder b)]) =
      _$AnimeEpisodeDto;

  @BuiltValueField(wireName: 'episode_id')
  int get episodeId;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_japanese')
  String get titleJapanese;

  @BuiltValueField(wireName: 'title_romanji')
  String get titleRomanji;

  @BuiltValueField(wireName: 'aired')
  AiredDto get aired;

  @BuiltValueField(wireName: 'filler')
  bool get filler;

  @BuiltValueField(wireName: 'recap')
  bool get recap;

  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  @BuiltValueField(wireName: 'forum_url')
  String get forumUrl;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AnimeEpisodeDto.serializer, this));
  }

  static AnimeEpisodeDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeEpisodeDto.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeEpisodeDto> get serializer =>
      _$animeEpisodeDtoSerializer;
}
