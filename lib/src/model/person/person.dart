library person;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/person/anime_staff.dart';
import 'package:jikan_api/src/model/person/published_manga.dart';
import 'package:jikan_api/src/model/person/voice_acting.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  Person._();

  factory Person([Function(PersonBuilder b) updates]) = _$Person;

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
    return json.encode(serializers.serializeWith(Person.serializer, this));
  }

  static Person fromJson(String jsonString) {
    return serializers.deserializeWith(
        Person.serializer, json.decode(jsonString));
  }

  static Serializer<Person> get serializer => _$personSerializer;
}
