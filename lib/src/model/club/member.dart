library member;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'member.g.dart';

abstract class Member implements Built<Member, MemberBuilder> {
  Member._();

  factory Member([Function(MemberBuilder b) updates]) = _$Member;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  String toJson() {
    return json.encode(serializers.serializeWith(Member.serializer, this));
  }

  static Member fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Member.serializer, jsonMap);
  }

  static Serializer<Member> get serializer => _$memberSerializer;
}
