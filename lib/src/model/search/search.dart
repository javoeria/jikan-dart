library search;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'search.g.dart';

abstract class Search implements Built<Search, SearchBuilder> {
  Search._();

  factory Search([Function(SearchBuilder b) updates]) = _$Search;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'title')
  @nullable
  String get title;

  @BuiltValueField(wireName: 'synopsis')
  @nullable
  String get synopsis;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;

  @BuiltValueField(wireName: 'episodes')
  @nullable
  int get episodes;

  @BuiltValueField(wireName: 'chapters')
  @nullable
  int get chapters;

  @BuiltValueField(wireName: 'volumes')
  @nullable
  int get volumes;

  @BuiltValueField(wireName: 'start_date')
  @nullable
  String get startDate;

  @BuiltValueField(wireName: 'end_date')
  @nullable
  String get endDate;

  @BuiltValueField(wireName: 'members')
  @nullable
  int get members;

  @BuiltValueField(wireName: 'score')
  @nullable
  double get score;

  @BuiltValueField(wireName: 'rated')
  @nullable
  String get rated;

  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;

  @BuiltValueField(wireName: 'airing')
  @nullable
  bool get airing;

  @BuiltValueField(wireName: 'publishing')
  @nullable
  bool get publishing;

  String toJson() {
    return json.encode(serializers.serializeWith(Search.serializer, this));
  }

  static Search fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Search.serializer, jsonMap);
  }

  static Serializer<Search> get serializer => _$searchSerializer;
}
