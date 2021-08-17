library character_staff;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/character/character_role.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/anime/staff.dart';

part 'character_staff.g.dart';

abstract class CharacterStaff
    implements Built<CharacterStaff, CharacterStaffBuilder> {
  CharacterStaff._();

  factory CharacterStaff([Function(CharacterStaffBuilder b) updates]) =
      _$CharacterStaff;

  @BuiltValueField(wireName: 'characters')
  BuiltList<CharacterRole> get characters;

  @BuiltValueField(wireName: 'staff')
  BuiltList<Staff> get staff;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CharacterStaff.serializer, this));
  }

  static CharacterStaff fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(CharacterStaff.serializer, jsonMap)!;
  }

  static Serializer<CharacterStaff> get serializer =>
      _$characterStaffSerializer;
}
