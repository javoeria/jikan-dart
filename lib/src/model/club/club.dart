library club;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'club.g.dart';

abstract class Club implements Built<Club, ClubBuilder> {
  Club._();

  factory Club([Function(ClubBuilder b) updates]) = _$Club;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'members_count')
  int get membersCount;

  @BuiltValueField(wireName: 'pictures_count')
  int get picturesCount;

  @BuiltValueField(wireName: 'category')
  String get category;

  @BuiltValueField(wireName: 'created')
  String get created;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'staff')
  BuiltList<Meta> get staff;

  @BuiltValueField(wireName: 'anime_relations')
  BuiltList<Meta> get animeRelations;

  @BuiltValueField(wireName: 'manga_relations')
  BuiltList<Meta> get mangaRelations;

  @BuiltValueField(wireName: 'character_relations')
  BuiltList<Meta> get characterRelations;

  String toJson() {
    return serializers.toJson(Club.serializer, this);
  }

  static Club fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Club.serializer, jsonMap)!;
  }

  static Serializer<Club> get serializer => _$clubSerializer;
}
