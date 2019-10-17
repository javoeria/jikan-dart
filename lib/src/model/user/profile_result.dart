library profile_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/anime_stats.dart';
import 'package:jikan_dart/src/model/user/favorites.dart';
import 'package:jikan_dart/src/model/user/manga_stats.dart';

part 'profile_result.g.dart';

abstract class ProfileResult
    implements Built<ProfileResult, ProfileResultBuilder> {
  ProfileResult._();

  factory ProfileResult([updates(ProfileResultBuilder b)]) = _$ProfileResult;

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
  AnimeStats get animeStats;

  @BuiltValueField(wireName: 'manga_stats')
  MangaStats get mangaStats;

  @BuiltValueField(wireName: 'favorites')
  Favorites get favorites;

  @BuiltValueField(wireName: 'about')
  @nullable
  String get about;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProfileResult.serializer, this));
  }

  static ProfileResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProfileResult.serializer, json.decode(jsonString));
  }

  static Serializer<ProfileResult> get serializer => _$profileResultSerializer;
}
