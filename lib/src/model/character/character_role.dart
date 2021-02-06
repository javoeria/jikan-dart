library character_role;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/character/voice_actor.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'character_role.g.dart';

abstract class CharacterRole
    implements Built<CharacterRole, CharacterRoleBuilder> {
  CharacterRole._();

  factory CharacterRole([Function(CharacterRoleBuilder b) updates]) =
      _$CharacterRole;

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
  @nullable
  BuiltList<VoiceActor> get voiceActors;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CharacterRole.serializer, this));
  }

  static CharacterRole fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(CharacterRole.serializer, jsonMap);
  }

  static Serializer<CharacterRole> get serializer => _$characterRoleSerializer;
}
