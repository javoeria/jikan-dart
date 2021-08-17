library character;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/character/character_role.dart';
import 'package:jikan_api/src/model/character/voice_actor.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  Character._();

  factory Character([Function(CharacterBuilder b) updates]) = _$Character;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'name_kanji')
  String? get nameKanji;

  @BuiltValueField(wireName: 'nicknames')
  BuiltList<String> get nicknames;

  @BuiltValueField(wireName: 'about')
  String get about;

  @BuiltValueField(wireName: 'member_favorites')
  int get memberFavorites;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'animeography')
  BuiltList<CharacterRole> get animeography;

  @BuiltValueField(wireName: 'mangaography')
  BuiltList<CharacterRole> get mangaography;

  @BuiltValueField(wireName: 'voice_actors')
  BuiltList<VoiceActor> get voiceActors;

  String toJson() {
    return serializers.toJson(Character.serializer, this);
  }

  static Character fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Character.serializer, jsonMap)!;
  }

  static Serializer<Character> get serializer => _$characterSerializer;
}
