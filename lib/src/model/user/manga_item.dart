library manga_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_item.g.dart';

abstract class MangaItem implements Built<MangaItem, MangaItemBuilder> {
  MangaItem._();

  factory MangaItem([updates(MangaItemBuilder b)]) = _$MangaItem;

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

  @BuiltValueField(wireName: 'read_chapters')
  int get readChapters;

  @BuiltValueField(wireName: 'read_volumes')
  int get readVolumes;

  @BuiltValueField(wireName: 'total_chapters')
  int get totalChapters;

  @BuiltValueField(wireName: 'total_volumes')
  int get totalVolumes;

  @BuiltValueField(wireName: 'reading_status')
  int get readingStatus;

  String toJson() {
    return json.encode(serializers.serializeWith(MangaItem.serializer, this));
  }

  static MangaItem fromJson(String jsonString) {
    return serializers.deserializeWith(MangaItem.serializer, json.decode(jsonString));
  }

  static Serializer<MangaItem> get serializer => _$mangaItemSerializer;
}
