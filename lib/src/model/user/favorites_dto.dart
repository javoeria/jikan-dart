library favorites_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/favorite_item_dto.dart';

part 'favorites_dto.g.dart';

abstract class FavoritesDto implements Built<FavoritesDto, FavoritesDtoBuilder> {
  FavoritesDto._();

  factory FavoritesDto([updates(FavoritesDtoBuilder b)]) = _$FavoritesDto;

  @BuiltValueField(wireName: 'anime')
  BuiltList<FavoriteItemDto> get anime;
  @BuiltValueField(wireName: 'manga')
  BuiltList<FavoriteItemDto> get manga;
  @BuiltValueField(wireName: 'characters')
  BuiltList<FavoriteItemDto> get characters;
  @BuiltValueField(wireName: 'people')
  BuiltList<FavoriteItemDto> get people;
  String toJson() {
    return json.encode(serializers.serializeWith(FavoritesDto.serializer, this));
  }

  static FavoritesDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        FavoritesDto.serializer, json.decode(jsonString));
  }

  static Serializer<FavoritesDto> get serializer => _$favoritesDtoSerializer;
}