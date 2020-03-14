library favorite;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'favorite.g.dart';

abstract class Favorite implements Built<Favorite, FavoriteBuilder> {
  Favorite._();

  factory Favorite([Function(FavoriteBuilder b) updates]) = _$Favorite;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json.encode(serializers.serializeWith(Favorite.serializer, this));
  }

  static Favorite fromJson(String jsonString) {
    return serializers.deserializeWith(
        Favorite.serializer, json.decode(jsonString));
  }

  static Serializer<Favorite> get serializer => _$favoriteSerializer;
}
