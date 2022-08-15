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

  @BuiltValueField(wireName: 'relation')
  String get relation;

  @BuiltValueField(wireName: 'entry')
  BuiltList<GenericInfo> get entry;

  String toJson() {
    return serializers.toJson(Related.serializer, this);
  }

  static Related fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Related.serializer, jsonMap)!;
  }

  static Serializer<Related> get serializer => _$relatedSerializer;
}
