library favorites;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/favorite.dart';

part 'favorites.g.dart';

abstract class Favorites implements Built<Favorites, FavoritesBuilder> {
  Favorites._();

  factory Favorites([updates(FavoritesBuilder b)]) = _$Favorites;

  @BuiltValueField(wireName: 'anime')
  BuiltList<Favorite> get anime;

  @BuiltValueField(wireName: 'manga')
  BuiltList<Favorite> get manga;

  @BuiltValueField(wireName: 'characters')
  BuiltList<Favorite> get characters;

  @BuiltValueField(wireName: 'people')
  BuiltList<Favorite> get people;

  String toJson() {
    return json.encode(serializers.serializeWith(Favorites.serializer, this));
  }

  static Favorites fromJson(String jsonString) {
    return serializers.deserializeWith(
        Favorites.serializer, json.decode(jsonString));
  }

  static Serializer<Favorites> get serializer => _$favoritesSerializer;
}
