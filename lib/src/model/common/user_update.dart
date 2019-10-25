library user_update;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'user_update.g.dart';

abstract class UserUpdate implements Built<UserUpdate, UserUpdateBuilder> {
  UserUpdate._();

  factory UserUpdate([updates(UserUpdateBuilder b)]) = _$UserUpdate;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'score')
  @nullable
  int get score;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'episodes_seen')
  @nullable
  int get episodesSeen;

  @BuiltValueField(wireName: 'episodes_total')
  @nullable
  int get episodesTotal;

  @BuiltValueField(wireName: 'volumes_read')
  @nullable
  int get volumesRead;

  @BuiltValueField(wireName: 'volumes_total')
  @nullable
  int get volumesTotal;

  @BuiltValueField(wireName: 'chapters_read')
  @nullable
  int get chaptersRead;

  @BuiltValueField(wireName: 'chapters_total')
  @nullable
  int get chaptersTotal;

  @BuiltValueField(wireName: 'date')
  @nullable
  String get date;

  String toJson() {
    return json.encode(serializers.serializeWith(UserUpdate.serializer, this));
  }

  static UserUpdate fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserUpdate.serializer, json.decode(jsonString));
  }

  static Serializer<UserUpdate> get serializer => _$userUpdateSerializer;
}
