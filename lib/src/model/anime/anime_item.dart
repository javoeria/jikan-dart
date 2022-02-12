library anime_item;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'anime_item.g.dart';

abstract class AnimeItem implements Built<AnimeItem, AnimeItemBuilder> {
  AnimeItem._();

  factory AnimeItem([Function(AnimeItemBuilder b) updates]) = _$AnimeItem;

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
  String? get type;

  @BuiltValueField(wireName: 'airing_start')
  String? get airingStart;

  @BuiltValueField(wireName: 'episodes')
  int? get episodes;

  @BuiltValueField(wireName: 'members')
  int get members;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'source')
  String get source;

  @BuiltValueField(wireName: 'producers')
  BuiltList<GenericInfo> get producers;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<String>? get licensors;

  @BuiltValueField(wireName: 'r18')
  bool get r18;

  @BuiltValueField(wireName: 'kids')
  bool get kids;

  @BuiltValueField(wireName: 'continuing')
  bool? get continuing;

  String toJson() {
    return serializers.toJson(AnimeItem.serializer, this);
  }

  static AnimeItem fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(AnimeItem.serializer, jsonMap)!;
  }

  static Serializer<AnimeItem> get serializer => _$animeItemSerializer;
}
