library history_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/history_result_item.dart';

part 'history_result.g.dart';

abstract class HistoryResult
    implements Built<HistoryResult, HistoryResultBuilder> {
  HistoryResult._();

  factory HistoryResult([updates(HistoryResultBuilder b)]) = _$HistoryResult;

  @BuiltValueField(wireName: 'history')
  BuiltList<HistoryResultItem> get history;

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
