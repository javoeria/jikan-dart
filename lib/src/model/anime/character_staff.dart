library character_staff;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/anime/character.dart';
import 'package:jikan_dart/src/model/anime/staff.dart';

part 'character_staff.g.dart';

abstract class CharacterStaff
    implements Built<CharacterStaff, CharacterStaffBuilder> {
  CharacterStaff._();

  factory CharacterStaff([updates(CharacterStaffBuilder b)]) = _$CharacterStaff;

  @BuiltValueField(wireName: 'characters')
  BuiltList<Character> get characters;

  @BuiltValueField(wireName: 'staff')
  BuiltList<Staff> get staff;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CharacterStaff.serializer, this));
  }

  static CharacterStaff fromJson(String jsonString) {
    return serializers.deserializeWith(
        CharacterStaff.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterStaff> get serializer =>
      _$characterStaffSerializer;
}
