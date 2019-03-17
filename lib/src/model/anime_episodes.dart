library anime_episodes;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/anime_episode.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_episodes.g.dart';

abstract class AnimeEpisodes
    implements Built<AnimeEpisodes, AnimeEpisodesBuilder> {
  AnimeEpisodes._();

  factory AnimeEpisodes([updates(AnimeEpisodesBuilder b)]) = _$AnimeEpisodes;

  @BuiltValueField(wireName: 'episodes_last_page')
  int get episodesLastPage;

  @BuiltValueField(wireName: 'episodes')
  BuiltList<AnimeEpisode> get episodes;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AnimeEpisodes.serializer, this));
  }

  static AnimeEpisodes fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeEpisodes.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeEpisodes> get serializer => _$animeEpisodesSerializer;
}
