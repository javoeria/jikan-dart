library manga_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/jikan_dart.dart';
import 'package:jikan_dart/src/model/info/generic_info.dart';
import 'package:jikan_dart/src/model/related.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_info.g.dart';

abstract class MangaInfo implements Built<MangaInfo, MangaInfoBuilder> {
  MangaInfo._();

  factory MangaInfo([updates(MangaInfoBuilder b)]) = _$MangaInfo;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

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

  @BuiltValueField(wireName: 'related')
  Related get related;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'authors')
  BuiltList<GenericInfo> get authors;

  @BuiltValueField(wireName: 'serializations')
  BuiltList<GenericInfo> get serializations;

  String toJson() {
    return json.encode(serializers.serializeWith(MangaInfo.serializer, this));
  }

  static MangaInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        MangaInfo.serializer, json.decode(jsonString));
  }

  static Serializer<MangaInfo> get serializer => _$mangaInfoSerializer;
}
