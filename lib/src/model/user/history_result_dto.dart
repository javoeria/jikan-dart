library history_result_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';
import 'package:jikan_dart/src/model/user/history_result_item_dto.dart';

part 'history_result_dto.g.dart';

abstract class HistoryResultDto
    implements Built<HistoryResultDto, HistoryResultDtoBuilder> {
  HistoryResultDto._();

  factory HistoryResultDto([updates(HistoryResultDtoBuilder b)]) =
  _$HistoryResultDto;

  @BuiltValueField(wireName: 'history')
  BuiltList<HistoryResultItemDto> get history;
  String toJson() {
    return json
        .encode(serializers.serializeWith(HistoryResultDto.serializer, this));
  }

  static HistoryResultDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        HistoryResultDto.serializer, json.decode(jsonString));
  }

  static Serializer<HistoryResultDto> get serializer =>
      _$historyResultDtoSerializer;
}
