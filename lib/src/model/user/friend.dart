library friend;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'friend.g.dart';

abstract class Friend implements Built<Friend, FriendBuilder> {
  Friend._();

  factory Friend([updates(FriendBuilder b)]) = _$Friend;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'last_online')
  String get lastOnline;

  @BuiltValueField(wireName: 'friends_since')
  @nullable
  String get friendsSince;

  String toJson() {
    return json.encode(serializers.serializeWith(Friend.serializer, this));
  }

  static Friend fromJson(String jsonString) {
    return serializers.deserializeWith(
        Friend.serializer, json.decode(jsonString));
  }

  static Serializer<Friend> get serializer => _$friendSerializer;
}
