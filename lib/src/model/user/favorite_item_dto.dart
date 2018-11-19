library favorite_item_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'favorite_item_dto.g.dart';

abstract class FavoriteItemDto
    implements Built<FavoriteItemDto, FavoriteItemDtoBuilder> {
  FavoriteItemDto._();

  factory FavoriteItemDto([updates(FavoriteItemDtoBuilder b)]) =
  _$FavoriteItemDto;

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
        .encode(serializers.serializeWith(FavoriteItemDto.serializer, this));
  }

  static FavoriteItemDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        FavoriteItemDto.serializer, json.decode(jsonString));
  }

  static Serializer<FavoriteItemDto> get serializer =>
      _$favoriteItemDtoSerializer;
}
