library history;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'history.g.dart';

abstract class History implements Built<History, HistoryBuilder> {
  History._();

  factory History([updates(HistoryBuilder b)]) = _$History;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'increment')
  int get increment;

  @BuiltValueField(wireName: 'date')
  String get date;

  String toJson() {
    return json.encode(serializers.serializeWith(History.serializer, this));
  }

  static History fromJson(String jsonString) {
    return serializers.deserializeWith(
        History.serializer, json.decode(jsonString));
  }

  static Serializer<History> get serializer => _$historySerializer;
}
