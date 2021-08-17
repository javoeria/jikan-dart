library search;

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
  String? get title;

  @BuiltValueField(wireName: 'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'episodes')
  int? get episodes;

  @BuiltValueField(wireName: 'chapters')
  int? get chapters;

  @BuiltValueField(wireName: 'volumes')
  int? get volumes;

  @BuiltValueField(wireName: 'start_date')
  String? get startDate;

  @BuiltValueField(wireName: 'end_date')
  String? get endDate;

  @BuiltValueField(wireName: 'members')
  int? get members;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'rated')
  String? get rated;

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'airing')
  bool? get airing;

  @BuiltValueField(wireName: 'publishing')
  bool? get publishing;

  String toJson() {
    return serializers.toJson(Search.serializer, this);
  }

  static Search fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Search.serializer, jsonMap)!;
  }

  static Serializer<Search> get serializer => _$searchSerializer;
}
