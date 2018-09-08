library anime_episodes_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/anime_episode_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_episodes_dto.g.dart';

abstract class AnimeEpisodesDto
    implements Built<AnimeEpisodesDto, AnimeEpisodesDtoBuilder> {
  AnimeEpisodesDto._();

  factory AnimeEpisodesDto([updates(AnimeEpisodesDtoBuilder b)]) =
      _$AnimeEpisodesDto;

  @BuiltValueField(wireName: 'episodes_last_page')
  int get episodesLastPage;

  @BuiltValueField(wireName: 'episodes')
  BuiltList<AnimeEpisodeDto> get episodes;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AnimeEpisodesDto.serializer, this));
  }

  static AnimeEpisodesDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeEpisodesDto.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeEpisodesDto> get serializer =>
      _$animeEpisodesDtoSerializer;
}
