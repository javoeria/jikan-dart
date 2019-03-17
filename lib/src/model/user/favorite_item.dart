library favorite_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'favorite_item.g.dart';

abstract class FavoriteItem
    implements Built<FavoriteItem, FavoriteItemBuilder> {
  FavoriteItem._();

  factory FavoriteItem([updates(FavoriteItemBuilder b)]) = _$FavoriteItem;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FavoriteItem.serializer, this));
  }

  static FavoriteItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        FavoriteItem.serializer, json.decode(jsonString));
  }

  static Serializer<FavoriteItem> get serializer => _$favoriteItemSerializer;
}
