library user_profile;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/favorites.dart';
import 'package:jikan_dart/src/model/user/user_stats.dart';

part 'user_profile.g.dart';

abstract class UserProfile implements Built<UserProfile, UserProfileBuilder> {
  UserProfile._();

  factory UserProfile([updates(UserProfileBuilder b)]) = _$UserProfile;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  @nullable
  String get imageUrl;

  @BuiltValueField(wireName: 'last_online')
  String get lastOnline;

  @BuiltValueField(wireName: 'gender')
  @nullable
  String get gender;

  @BuiltValueField(wireName: 'birthday')
  @nullable
  String get birthday;

  @BuiltValueField(wireName: 'location')
  @nullable
  String get location;

  @BuiltValueField(wireName: 'joined')
  String get joined;

  @BuiltValueField(wireName: 'anime_stats')
  UserStats get animeStats;

  @BuiltValueField(wireName: 'manga_stats')
  UserStats get mangaStats;

  @BuiltValueField(wireName: 'favorites')
  Favorites get favorites;

  @BuiltValueField(wireName: 'about')
  @nullable
  String get about;

  String toJson() {
    return json.encode(serializers.serializeWith(UserProfile.serializer, this));
  }

  static UserProfile fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserProfile.serializer, json.decode(jsonString));
  }

  static Serializer<UserProfile> get serializer => _$userProfileSerializer;
}
