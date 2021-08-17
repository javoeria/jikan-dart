library manga_item;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'manga_item.g.dart';

abstract class MangaItem implements Built<MangaItem, MangaItemBuilder> {
  MangaItem._();

  factory MangaItem([Function(MangaItemBuilder b) updates]) = _$MangaItem;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'publishing_start')
  String? get publishingStart;

  @BuiltValueField(wireName: 'volumes')
  int? get volumes;

  @BuiltValueField(wireName: 'members')
  int get members;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'authors')
  BuiltList<GenericInfo> get authors;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'serialization')
  BuiltList<String>? get serialization;

  String toJson() {
    return serializers.toJson(MangaItem.serializer, this);
  }

  static MangaItem fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(MangaItem.serializer, jsonMap)!;
  }

  static Serializer<MangaItem> get serializer => _$mangaItemSerializer;
}
