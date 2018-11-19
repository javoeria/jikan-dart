library profile_result_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/anime_stats_dto.dart';
import 'package:jikan_dart/src/model/user/favorites_dto.dart';
import 'package:jikan_dart/src/model/user/manga_stats_dto.dart';

part 'profile_result_dto.g.dart';

abstract class ProfileResultDto
    implements Built<ProfileResultDto, ProfileResultDtoBuilder> {
  ProfileResultDto._();

  factory ProfileResultDto([updates(ProfileResultDtoBuilder b)]) =
      _$ProfileResultDto;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'last_online')
  String get lastOnline;

  @BuiltValueField(wireName: 'gender')
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
  AnimeStatsDto get animeStats;

  @BuiltValueField(wireName: 'manga_stats')
  MangaStatsDto get mangaStats;

  @BuiltValueField(wireName: 'favorites')
  FavoritesDto get favorites;

  @BuiltValueField(wireName: 'about')
  @nullable
  String get about;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProfileResultDto.serializer, this));
  }

  static ProfileResultDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProfileResultDto.serializer, json.decode(jsonString));
  }

  static Serializer<ProfileResultDto> get serializer =>
      _$profileResultDtoSerializer;
}
