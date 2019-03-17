library producer;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producer.g.dart';

abstract class Producer implements Built<Producer, ProducerBuilder> {
  Producer._();

  factory Producer([updates(ProducerBuilder b)]) = _$Producer;

  @BuiltValueField(wireName: 'mal_id')
  @nullable
  int get malId;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;

  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;

  @BuiltValueField(wireName: 'url')
  @nullable
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(Producer.serializer, this));
  }

  static Producer fromJson(String jsonString) {
    return serializers.deserializeWith(
        Producer.serializer, json.decode(jsonString));
  }

  static Serializer<Producer> get serializer => _$producerSerializer;
}
