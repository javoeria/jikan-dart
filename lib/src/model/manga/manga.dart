library manga;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/aired.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/common/related.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'manga.g.dart';

abstract class Manga implements Built<Manga, MangaBuilder> {
  Manga._();

  factory Manga([Function(MangaBuilder b) updates]) = _$Manga;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_english')
  @nullable
  String get titleEnglish;

  @BuiltValueField(wireName: 'title_synonyms')
  BuiltList<String> get titleSynonyms;

  @BuiltValueField(wireName: 'title_japanese')
  @nullable
  String get titleJapanese;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;

  @BuiltValueField(wireName: 'volumes')
  @nullable
  int get volumes;

  @BuiltValueField(wireName: 'chapters')
  @nullable
  int get chapters;

  @BuiltValueField(wireName: 'publishing')
  bool get publishing;

  @BuiltValueField(wireName: 'published')
  Aired get published;

  @BuiltValueField(wireName: 'rank')
  @nullable
  int get rank;

  @BuiltValueField(wireName: 'score')
  @nullable
  double get score;

  @BuiltValueField(wireName: 'scored_by')
  @nullable
  int get scoredBy;

  @BuiltValueField(wireName: 'popularity')
  @nullable
  int get popularity;

  @BuiltValueField(wireName: 'members')
  @nullable
  int get members;

  @BuiltValueField(wireName: 'favorites')
  @nullable
  int get favorites;

  @BuiltValueField(wireName: 'synopsis')
  @nullable
  String get synopsis;

  @BuiltValueField(wireName: 'background')
  @nullable
  String get background;

  @BuiltValueField(wireName: 'related')
  Related get related;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'authors')
  BuiltList<GenericInfo> get authors;

  @BuiltValueField(wireName: 'serializations')
  BuiltList<GenericInfo> get serializations;

  String toJson() {
    return json.encode(serializers.serializeWith(Manga.serializer, this));
  }

  static Manga fromJson(String jsonString) {
    return serializers.deserializeWith(
        Manga.serializer, json.decode(jsonString));
  }

  static Serializer<Manga> get serializer => _$mangaSerializer;
}
