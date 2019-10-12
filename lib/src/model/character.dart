library character;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/voice_actor.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  Character._();

  factory Character([updates(CharacterBuilder b)]) = _$Character;

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

  @BuiltValueField(wireName: 'voice_actors')
  BuiltList<VoiceActor> get voiceActors;

  String toJson() {
    return json.encode(serializers.serializeWith(Character.serializer, this));
  }

  static Character fromJson(String jsonString) {
    return serializers.deserializeWith(
        Character.serializer, json.decode(jsonString));
  }

  static Serializer<Character> get serializer => _$characterSerializer;
}
