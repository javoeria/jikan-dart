library anime_episode;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_episode.g.dart';

abstract class AnimeEpisode
    implements Built<AnimeEpisode, AnimeEpisodeBuilder> {
  AnimeEpisode._();

  factory AnimeEpisode([updates(AnimeEpisodeBuilder b)]) = _$AnimeEpisode;

  @BuiltValueField(wireName: 'episode_id')
  int get episodeId;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_japanese')
  @nullable
  String get titleJapanese;

  @BuiltValueField(wireName: 'title_romanji')
  @nullable
  String get titleRomanji;

  @BuiltValueField(wireName: 'aired')
  @nullable
  String get aired;

  @BuiltValueField(wireName: 'filler')
  bool get filler;

  @BuiltValueField(wireName: 'recap')
  bool get recap;

  @BuiltValueField(wireName: 'video_url')
  @nullable
  String get videoUrl;

  @BuiltValueField(wireName: 'forum_url')
  @nullable
  String get forumUrl;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AnimeEpisode.serializer, this));
  }

  static AnimeEpisode fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeEpisode.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeEpisode> get serializer => _$animeEpisodeSerializer;
}
