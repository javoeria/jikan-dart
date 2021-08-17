library voice_acting;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'voice_acting.g.dart';

abstract class VoiceActing implements Built<VoiceActing, VoiceActingBuilder> {
  VoiceActing._();

  factory VoiceActing([Function(VoiceActingBuilder b) updates]) = _$VoiceActing;

  @BuiltValueField(wireName: 'role')
  String get role;

  @BuiltValueField(wireName: 'anime')
  GenericInfo get anime;

  @BuiltValueField(wireName: 'character')
  GenericInfo get character;

  String toJson() {
    return serializers.toJson(VoiceActing.serializer, this);
  }

  static VoiceActing fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(VoiceActing.serializer, jsonMap)!;
  }

  static Serializer<VoiceActing> get serializer => _$voiceActingSerializer;
}
