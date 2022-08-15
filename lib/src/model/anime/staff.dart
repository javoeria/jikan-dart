library staff;

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

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'positions')
  BuiltList<String> get positions;

  String toJson() {
    return serializers.toJson(Staff.serializer, this);
  }

  static Staff fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['mal_id'] = jsonMap['person']['mal_id'];
    jsonMap['url'] = jsonMap['person']['url'];
    jsonMap['image_url'] = jsonMap['person']['images']['jpg']['image_url'];
    jsonMap['name'] = jsonMap['person']['name'];
    return serializers.deserializeWith(Staff.serializer, jsonMap)!;
  }

  static Serializer<Staff> get serializer => _$staffSerializer;
}
