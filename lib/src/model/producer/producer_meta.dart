library producer_meta;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producer_meta.g.dart';

abstract class ProducerMeta
    implements Built<ProducerMeta, ProducerMetaBuilder> {
  ProducerMeta._();

  factory ProducerMeta([updates(ProducerMetaBuilder b)]) = _$ProducerMeta;

  @BuiltValueField(wireName: 'mal_id')
  @nullable
  int get malId;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  @nullable
  String get url;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProducerMeta.serializer, this));
  }

  static ProducerMeta fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProducerMeta.serializer, json.decode(jsonString));
  }

  static Serializer<ProducerMeta> get serializer => _$producerMetaSerializer;
}
