library manga_character;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_character.g.dart';

abstract class MangaCharacter
    implements Built<MangaCharacter, MangaCharacterBuilder> {
  MangaCharacter._();

  factory MangaCharacter([updates(MangaCharacterBuilder b)]) = _$MangaCharacter;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'role')
  String get role;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MangaCharacter.serializer, this));
  }

  static MangaCharacter fromJson(String jsonString) {
    return serializers.deserializeWith(
        MangaCharacter.serializer, json.decode(jsonString));
  }

  static Serializer<MangaCharacter> get serializer =>
      _$mangaCharacterSerializer;
}
