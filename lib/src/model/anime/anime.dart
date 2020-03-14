library anime;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/aired.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/common/related.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'anime.g.dart';

abstract class Anime implements Built<Anime, AnimeBuilder> {
  Anime._();

  factory Anime([Function(AnimeBuilder b) updates]) = _$Anime;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'trailer_url')
  @nullable
  String get trailerUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_english')
  @nullable
  String get titleEnglish;

  @BuiltValueField(wireName: 'title_japanese')
  String get titleJapanese;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'source')
  String get source;

  @BuiltValueField(wireName: 'episodes')
  @nullable
  int get episodes;

  @BuiltValueField(wireName: 'airing')
  bool get airing;

  @BuiltValueField(wireName: 'aired')
  Aired get aired;

  @BuiltValueField(wireName: 'duration')
  String get duration;

  @BuiltValueField(wireName: 'rating')
  String get rating;

  @BuiltValueField(wireName: 'rank')
  @nullable
  int get rank;

  @BuiltValueField(wireName: 'score')
  @nullable
  double get score;

  @BuiltValueField(wireName: 'scored_by')
  int get scoredBy;

  @BuiltValueField(wireName: 'popularity')
  int get popularity;

  @BuiltValueField(wireName: 'members')
  int get members;

  @BuiltValueField(wireName: 'favorites')
  int get favorites;

  @BuiltValueField(wireName: 'synopsis')
  @nullable
  String get synopsis;

  @BuiltValueField(wireName: 'background')
  @nullable
  String get background;

  @BuiltValueField(wireName: 'premiered')
  @nullable
  String get premiered;

  @BuiltValueField(wireName: 'broadcast')
  @nullable
  String get broadcast;

  @BuiltValueField(wireName: 'related')
  Related get related;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'producers')
  BuiltList<GenericInfo> get producers;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<GenericInfo> get licensors;

  @BuiltValueField(wireName: 'studios')
  BuiltList<GenericInfo> get studios;

  @BuiltValueField(wireName: 'opening_themes')
  BuiltList<String> get openingThemes;

  @BuiltValueField(wireName: 'ending_themes')
  BuiltList<String> get endingThemes;

  String toJson() {
    return json.encode(serializers.serializeWith(Anime.serializer, this));
  }

  static Anime fromJson(String jsonString) {
    return serializers.deserializeWith(
        Anime.serializer, json.decode(jsonString));
  }

  static Serializer<Anime> get serializer => _$animeSerializer;
}
