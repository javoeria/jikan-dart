library history_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/meta.dart';

part 'history_result.g.dart';

abstract class HistoryResult
    implements Built<HistoryResult, HistoryResultBuilder> {
  HistoryResult._();

  factory HistoryResult([updates(HistoryResultBuilder b)]) = _$HistoryResult;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'increment')
  int get increment;

  @BuiltValueField(wireName: 'date')
  String get date;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HistoryResult.serializer, this));
  }

  static HistoryResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        HistoryResult.serializer, json.decode(jsonString));
  }

  static Serializer<HistoryResult> get serializer => _$historyResultSerializer;
}
