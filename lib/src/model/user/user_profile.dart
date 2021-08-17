library user_profile;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/favorites.dart';
import 'package:jikan_api/src/model/user/user_stats.dart';

part 'user_profile.g.dart';

abstract class UserProfile implements Built<UserProfile, UserProfileBuilder> {
  UserProfile._();

  factory UserProfile([Function(UserProfileBuilder b) updates]) = _$UserProfile;

  @BuiltValueField(wireName: 'user_id')
  int? get userId;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'last_online')
  String? get lastOnline;

  @BuiltValueField(wireName: 'gender')
  String? get gender;

  @BuiltValueField(wireName: 'birthday')
  String? get birthday;

  @BuiltValueField(wireName: 'location')
  String? get location;

  @BuiltValueField(wireName: 'joined')
  String? get joined;

  @BuiltValueField(wireName: 'anime_stats')
  UserStats get animeStats;

  @BuiltValueField(wireName: 'manga_stats')
  UserStats get mangaStats;

  @BuiltValueField(wireName: 'favorites')
  Favorites get favorites;

  @BuiltValueField(wireName: 'about')
  String? get about;

  String toJson() {
    return json.encode(serializers.serializeWith(UserProfile.serializer, this));
  }

  static UserProfile fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(UserProfile.serializer, jsonMap)!;
  }

  static Serializer<UserProfile> get serializer => _$userProfileSerializer;
}
