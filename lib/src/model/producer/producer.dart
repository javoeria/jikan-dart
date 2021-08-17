library producer;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/meta.dart';
import 'package:jikan_api/src/model/anime/anime_item.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'producer.g.dart';

abstract class Producer implements Built<Producer, ProducerBuilder> {
  Producer._();

  factory Producer([Function(ProducerBuilder b) updates]) = _$Producer;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'anime')
  BuiltList<AnimeItem> get anime;

  String toJson() {
    return json.encode(serializers.serializeWith(Producer.serializer, this));
  }

  static Producer fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Producer.serializer, jsonMap)!;
  }

  static Serializer<Producer> get serializer => _$producerSerializer;
}
