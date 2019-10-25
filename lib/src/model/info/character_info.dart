library character_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/common/character.dart';
import 'package:jikan_dart/src/model/common/voice_actor.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'character_info.g.dart';

abstract class CharacterInfo
    implements Built<CharacterInfo, CharacterInfoBuilder> {
  CharacterInfo._();

  factory CharacterInfo([updates(CharacterInfoBuilder b)]) = _$CharacterInfo;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'name_kanji')
  @nullable
  String get nameKanji;

  @BuiltValueField(wireName: 'about')
  @nullable
  String get about;

  @BuiltValueField(wireName: 'member_favorites')
  int get memberFavorites;

  @BuiltValueField(wireName: 'nicknames')
  BuiltList<String> get nicknames;

  @BuiltValueField(wireName: 'animeography')
  BuiltList<Character> get animeography;

  @BuiltValueField(wireName: 'mangaography')
  BuiltList<Character> get mangaography;

  @BuiltValueField(wireName: 'voice_actors')
  BuiltList<VoiceActor> get voiceActors;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CharacterInfo.serializer, this));
  }

  static CharacterInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        CharacterInfo.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterInfo> get serializer => _$characterInfoSerializer;
}
