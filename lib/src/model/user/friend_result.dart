library friend_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'friend_result.g.dart';

abstract class FriendResult
    implements Built<FriendResult, FriendResultBuilder> {
  FriendResult._();

  factory FriendResult([updates(FriendResultBuilder b)]) = _$FriendResult;

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
    return json
        .encode(serializers.serializeWith(FriendResult.serializer, this));
  }

  static FriendResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        FriendResult.serializer, json.decode(jsonString));
  }

  static Serializer<FriendResult> get serializer => _$friendResultSerializer;
}
