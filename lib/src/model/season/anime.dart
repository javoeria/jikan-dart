library anime;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/season/season_genre.dart';
import 'package:jikan_dart/src/model/season/producer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime.g.dart';

abstract class Anime implements Built<Anime, AnimeBuilder> {
  Anime._();

  factory Anime([updates(AnimeBuilder b)]) = _$Anime;

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
  BuiltList<SeasonGenre> get genres;

  @BuiltValueField(wireName: 'source')
  @nullable
  String get source;

  @BuiltValueField(wireName: 'producers')
  BuiltList<Producer> get producers;

  @BuiltValueField(wireName: 'score')
  @nullable
  double get score;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<String> get licensors;

  @BuiltValueField(wireName: 'r18')
  @nullable
  bool get r18;

  @BuiltValueField(wireName: 'kids')
  @nullable
  bool get kids;

  @BuiltValueField(wireName: 'continuing')
  @nullable
  bool get continuing;

  String toJson() {
    return json.encode(serializers.serializeWith(Anime.serializer, this));
  }

  static Anime fromJson(String jsonString) {
    return serializers.deserializeWith(
        Anime.serializer, json.decode(jsonString));
  }

  static Serializer<Anime> get serializer => _$animeSerializer;
}
