library anime_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_item.g.dart';

abstract class AnimeItem implements Built<AnimeItem, AnimeItemBuilder> {
  AnimeItem._();

  factory AnimeItem([updates(AnimeItemBuilder b)]) = _$AnimeItem;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'score')
  int get score;

  @BuiltValueField(wireName: 'watched_episodes')
  int get watchedEpisodes;

  @BuiltValueField(wireName: 'total_episodes')
  int get totalEpisodes;

  @BuiltValueField(wireName: 'watching_status')
  int get watchingStatus;

  String toJson() {
    return json.encode(serializers.serializeWith(AnimeItem.serializer, this));
  }

  static AnimeItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeItem.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeItem> get serializer => _$animeItemSerializer;
}
