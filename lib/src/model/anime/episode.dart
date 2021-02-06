library episode;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'episode.g.dart';

abstract class Episode implements Built<Episode, EpisodeBuilder> {
  Episode._();

  factory Episode([Function(EpisodeBuilder b) updates]) = _$Episode;

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
    return json.encode(serializers.serializeWith(Episode.serializer, this));
  }

  static Episode fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Episode.serializer, jsonMap);
  }

  static Serializer<Episode> get serializer => _$episodeSerializer;
}
