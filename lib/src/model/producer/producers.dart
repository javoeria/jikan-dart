library producers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/producer/producer_meta.dart';
import 'package:jikan_dart/src/model/season/anime.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'producers.g.dart';

abstract class Producers implements Built<Producers, ProducersBuilder> {
  Producers._();

  factory Producers([updates(ProducersBuilder b)]) = _$Producers;

  @BuiltValueField(wireName: 'meta')
  @nullable
  ProducerMeta get meta;

  @BuiltValueField(wireName: 'anime')
  @nullable
  BuiltList<Anime> get anime;

  String toJson() {
    return json.encode(serializers.serializeWith(Producers.serializer, this));
  }

  static Producers fromJson(String jsonString) {
    return serializers.deserializeWith(
        Producers.serializer, json.decode(jsonString));
  }

  static Serializer<Producers> get serializer => _$producersSerializer;
}
