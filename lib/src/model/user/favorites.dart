library favorites;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/favorite_item.dart';

part 'favorites.g.dart';

abstract class Favorites implements Built<Favorites, FavoritesBuilder> {
  Favorites._();

  factory Favorites([updates(FavoritesBuilder b)]) = _$Favorites;

  @BuiltValueField(wireName: 'anime')
  BuiltList<FavoriteItem> get anime;

  @BuiltValueField(wireName: 'manga')
  BuiltList<FavoriteItem> get manga;

  @BuiltValueField(wireName: 'characters')
  BuiltList<FavoriteItem> get characters;

  @BuiltValueField(wireName: 'people')
  BuiltList<FavoriteItem> get people;

  String toJson() {
    return json.encode(serializers.serializeWith(Favorites.serializer, this));
  }

  static Favorites fromJson(String jsonString) {
    return serializers.deserializeWith(
        Favorites.serializer, json.decode(jsonString));
  }

  static Serializer<Favorites> get serializer => _$favoritesSerializer;
}
