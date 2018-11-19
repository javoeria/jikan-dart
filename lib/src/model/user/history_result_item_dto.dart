library history_result_item_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/meta_dto.dart';

part 'history_result_item_dto.g.dart';

abstract class HistoryResultItemDto
    implements Built<HistoryResultItemDto, HistoryResultItemDtoBuilder> {
  HistoryResultItemDto._();

  factory HistoryResultItemDto([updates(HistoryResultItemDtoBuilder b)]) =
  _$HistoryResultItemDto;

  @BuiltValueField(wireName: 'meta')
  MetaDto get meta;
  @BuiltValueField(wireName: 'increment')
  int get increment;
  @BuiltValueField(wireName: 'date')
  String get date;
  String toJson() {
    return json.encode(
        serializers.serializeWith(HistoryResultItemDto.serializer, this));
  }

  static HistoryResultItemDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        HistoryResultItemDto.serializer, json.decode(jsonString));
  }

  static Serializer<HistoryResultItemDto> get serializer =>
      _$historyResultItemDtoSerializer;
}