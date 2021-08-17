library person;

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
  String? get websiteUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'given_name')
  String? get givenName;

  @BuiltValueField(wireName: 'family_name')
  String? get familyName;

  @BuiltValueField(wireName: 'alternate_names')
  BuiltList<String> get alternateNames;

  @BuiltValueField(wireName: 'birthday')
  String? get birthday;

  @BuiltValueField(wireName: 'member_favorites')
  int get memberFavorites;

  @BuiltValueField(wireName: 'about')
  String? get about;

  @BuiltValueField(wireName: 'voice_acting_roles')
  BuiltList<VoiceActing> get voiceActingRoles;

  @BuiltValueField(wireName: 'anime_staff_positions')
  BuiltList<AnimeStaff> get animeStaffPositions;

  @BuiltValueField(wireName: 'published_manga')
  BuiltList<PublishedManga> get publishedManga;

  String toJson() {
    return serializers.toJson(Person.serializer, this);
  }

  static Person fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Person.serializer, jsonMap)!;
  }

  static Serializer<Person> get serializer => _$personSerializer;
}
