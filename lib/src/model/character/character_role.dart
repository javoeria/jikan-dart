library character_role;

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

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'voice_actors')
  BuiltList<VoiceActor>? get voiceActors;

  String toJson() {
    return serializers.toJson(CharacterRole.serializer, this);
  }

  static CharacterRole fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['mal_id'] = jsonMap['character']['mal_id'];
    jsonMap['url'] = jsonMap['character']['url'];
    jsonMap['image_url'] = jsonMap['character']['images']['jpg']['image_url'];
    jsonMap['name'] = jsonMap['character']['name'];
    for (var voice in (jsonMap['voice_actors'] ?? [])) {
      voice['mal_id'] = voice['person']['mal_id'];
      voice['url'] = voice['person']['url'];
      voice['image_url'] = voice['person']['images']['jpg']['image_url'];
      voice['name'] = voice['person']['name'];
    }
    return serializers.deserializeWith(CharacterRole.serializer, jsonMap)!;
  }

  static Serializer<CharacterRole> get serializer => _$characterRoleSerializer;
}
