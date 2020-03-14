library aired;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'aired.g.dart';

abstract class Aired implements Built<Aired, AiredBuilder> {
  Aired._();

  factory Aired([Function(AiredBuilder b) updates]) = _$Aired;

  @BuiltValueField(wireName: 'from')
  @nullable
  String get from;

  @BuiltValueField(wireName: 'to')
  @nullable
  String get to;

  @BuiltValueField(wireName: 'string')
  @nullable
  String get string;

  String toJson() {
    return json.encode(serializers.serializeWith(Aired.serializer, this));
  }

  static Aired fromJson(String jsonString) {
    return serializers.deserializeWith(
        Aired.serializer, json.decode(jsonString));
  }

  static Serializer<Aired> get serializer => _$airedSerializer;
}
