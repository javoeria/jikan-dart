library staff;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'staff.g.dart';

abstract class Staff implements Built<Staff, StaffBuilder> {
  Staff._();

  factory Staff([Function(StaffBuilder b) updates]) = _$Staff;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'positions')
  BuiltList<String> get positions;

  String toJson() {
    return json.encode(serializers.serializeWith(Staff.serializer, this));
  }

  static Staff fromJson(String jsonString) {
    return serializers.deserializeWith(
        Staff.serializer, json.decode(jsonString));
  }

  static Serializer<Staff> get serializer => _$staffSerializer;
}
