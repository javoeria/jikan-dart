library voice_actor;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'voice_actor.g.dart';

abstract class VoiceActor implements Built<VoiceActor, VoiceActorBuilder> {
  VoiceActor._();

  factory VoiceActor([Function(VoiceActorBuilder b) updates]) = _$VoiceActor;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'language')
  String get language;

  String toJson() {
    return json.encode(serializers.serializeWith(VoiceActor.serializer, this));
  }

  static VoiceActor fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(VoiceActor.serializer, jsonMap);
  }

  static Serializer<VoiceActor> get serializer => _$voiceActorSerializer;
}
