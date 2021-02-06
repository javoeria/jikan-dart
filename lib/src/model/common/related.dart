library related;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'related.g.dart';

abstract class Related implements Built<Related, RelatedBuilder> {
  Related._();

  factory Related([Function(RelatedBuilder b) updates]) = _$Related;

  @BuiltValueField(wireName: 'Adaptation')
  @nullable
  BuiltList<GenericInfo> get adaptation;

  @BuiltValueField(wireName: 'Alternative setting')
  @nullable
  BuiltList<GenericInfo> get alternativeSetting;

  @BuiltValueField(wireName: 'Alternative version')
  @nullable
  BuiltList<GenericInfo> get alternativeVersion;

  @BuiltValueField(wireName: 'Character')
  @nullable
  BuiltList<GenericInfo> get character;

  @BuiltValueField(wireName: 'Full story')
  @nullable
  BuiltList<GenericInfo> get fullStory;

  @BuiltValueField(wireName: 'Other')
  @nullable
  BuiltList<GenericInfo> get other;

  @BuiltValueField(wireName: 'Parent story')
  @nullable
  BuiltList<GenericInfo> get parentStory;

  @BuiltValueField(wireName: 'Prequel')
  @nullable
  BuiltList<GenericInfo> get prequel;

  @BuiltValueField(wireName: 'Sequel')
  @nullable
  BuiltList<GenericInfo> get sequel;

  @BuiltValueField(wireName: 'Side story')
  @nullable
  BuiltList<GenericInfo> get sideStory;

  @BuiltValueField(wireName: 'Spin-off')
  @nullable
  BuiltList<GenericInfo> get spinOff;

  @BuiltValueField(wireName: 'Summary')
  @nullable
  BuiltList<GenericInfo> get summary;

  String toJson() {
    return json.encode(serializers.serializeWith(Related.serializer, this));
  }

  static Related fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Related.serializer, jsonMap);
  }

  static Serializer<Related> get serializer => _$relatedSerializer;
}
