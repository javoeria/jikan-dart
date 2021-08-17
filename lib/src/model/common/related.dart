library related;

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
  BuiltList<GenericInfo>? get adaptation;

  @BuiltValueField(wireName: 'Alternative setting')
  BuiltList<GenericInfo>? get alternativeSetting;

  @BuiltValueField(wireName: 'Alternative version')
  BuiltList<GenericInfo>? get alternativeVersion;

  @BuiltValueField(wireName: 'Character')
  BuiltList<GenericInfo>? get character;

  @BuiltValueField(wireName: 'Full story')
  BuiltList<GenericInfo>? get fullStory;

  @BuiltValueField(wireName: 'Other')
  BuiltList<GenericInfo>? get other;

  @BuiltValueField(wireName: 'Parent story')
  BuiltList<GenericInfo>? get parentStory;

  @BuiltValueField(wireName: 'Prequel')
  BuiltList<GenericInfo>? get prequel;

  @BuiltValueField(wireName: 'Sequel')
  BuiltList<GenericInfo>? get sequel;

  @BuiltValueField(wireName: 'Side story')
  BuiltList<GenericInfo>? get sideStory;

  @BuiltValueField(wireName: 'Spin-off')
  BuiltList<GenericInfo>? get spinOff;

  @BuiltValueField(wireName: 'Summary')
  BuiltList<GenericInfo>? get summary;

  String toJson() {
    return serializers.toJson(Related.serializer, this);
  }

  static Related fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Related.serializer, jsonMap)!;
  }

  static Serializer<Related> get serializer => _$relatedSerializer;
}
