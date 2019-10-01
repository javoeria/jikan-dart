library voice_acting;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/info/generic_info.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'voice_acting.g.dart';

abstract class VoiceActing implements Built<VoiceActing, VoiceActingBuilder> {
  VoiceActing._();

  factory VoiceActing([updates(VoiceActingBuilder b)]) = _$VoiceActing;

  @BuiltValueField(wireName: 'role')
  String get role;

  @BuiltValueField(wireName: 'anime')
  GenericInfo get anime;

  @BuiltValueField(wireName: 'character')
  GenericInfo get character;

  String toJson() {
    return json.encode(serializers.serializeWith(VoiceActing.serializer, this));
  }

  static VoiceActing fromJson(String jsonString) {
    return serializers.deserializeWith(
        VoiceActing.serializer, json.decode(jsonString));
  }

  static Serializer<VoiceActing> get serializer => _$voiceActingSerializer;
}
