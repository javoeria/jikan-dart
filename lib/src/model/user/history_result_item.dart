library history_result_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/meta.dart';

part 'history_result_item.g.dart';

abstract class HistoryResultItem
    implements Built<HistoryResultItem, HistoryResultItemBuilder> {
  HistoryResultItem._();

  factory HistoryResultItem([updates(HistoryResultItemBuilder b)]) =
      _$HistoryResultItem;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'increment')
  int get increment;

  @BuiltValueField(wireName: 'date')
  String get date;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HistoryResultItem.serializer, this));
  }

  static HistoryResultItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        HistoryResultItem.serializer, json.decode(jsonString));
  }

  static Serializer<HistoryResultItem> get serializer =>
      _$historyResultItemSerializer;
}
