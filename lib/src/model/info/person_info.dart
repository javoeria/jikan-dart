library person_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/anime/anime_staff.dart';
import 'package:jikan_dart/src/model/anime/voice_acting.dart';
import 'package:jikan_dart/src/model/manga/published_manga.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'person_info.g.dart';

abstract class PersonInfo implements Built<PersonInfo, PersonInfoBuilder> {
  PersonInfo._();

  factory PersonInfo([updates(PersonInfoBuilder b)]) = _$PersonInfo;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'website_url')
  @nullable
  String get websiteUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'given_name')
  @nullable
  String get givenName;

  @BuiltValueField(wireName: 'family_name')
  @nullable
  String get familyName;

  @BuiltValueField(wireName: 'about')
  @nullable
  String get about;

  @BuiltValueField(wireName: 'birthday')
  @nullable
  String get birthday;

  @BuiltValueField(wireName: 'member_favorites')
  int get memberFavorites;

  @BuiltValueField(wireName: 'voice_acting_roles')
  BuiltList<VoiceActing> get voiceActingRoles;

  @BuiltValueField(wireName: 'anime_staff_positions')
  BuiltList<AnimeStaff> get animeStaffPositions;

  @BuiltValueField(wireName: 'published_manga')
  BuiltList<PublishedManga> get publishedManga;

  String toJson() {
    return json.encode(serializers.serializeWith(PersonInfo.serializer, this));
  }

  static PersonInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        PersonInfo.serializer, json.decode(jsonString));
  }

  static Serializer<PersonInfo> get serializer => _$personInfoSerializer;
}
