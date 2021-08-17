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
  String? get trailerUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_english')
  String? get titleEnglish;

  @BuiltValueField(wireName: 'title_japanese')
  String? get titleJapanese;

  @BuiltValueField(wireName: 'title_synonyms')
  BuiltList<String> get titleSynonyms;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'source')
  String? get source;

  @BuiltValueField(wireName: 'episodes')
  int? get episodes;

  @BuiltValueField(wireName: 'status')
  String? get status;

  @BuiltValueField(wireName: 'airing')
  bool get airing;

  @BuiltValueField(wireName: 'aired')
  Aired get aired;

  @BuiltValueField(wireName: 'duration')
  String? get duration;

  @BuiltValueField(wireName: 'rating')
  String? get rating;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'scored_by')
  int? get scoredBy;

  @BuiltValueField(wireName: 'rank')
  int? get rank;

  @BuiltValueField(wireName: 'popularity')
  int? get popularity;

  @BuiltValueField(wireName: 'members')
  int? get members;

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: 'background')
  String? get background;

  @BuiltValueField(wireName: 'premiered')
  String? get premiered;

  @BuiltValueField(wireName: 'broadcast')
  String? get broadcast;

  @BuiltValueField(wireName: 'related')
  Related get related;

  @BuiltValueField(wireName: 'producers')
  BuiltList<GenericInfo> get producers;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<GenericInfo> get licensors;

  @BuiltValueField(wireName: 'studios')
  BuiltList<GenericInfo> get studios;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'opening_themes')
  BuiltList<String> get openingThemes;

  @BuiltValueField(wireName: 'ending_themes')
  BuiltList<String> get endingThemes;

  String toJson() {
    return json.encode(serializers.serializeWith(Anime.serializer, this));
  }

  static Anime fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Anime.serializer, jsonMap)!;
  }

  static Serializer<Anime> get serializer => _$animeSerializer;
}
