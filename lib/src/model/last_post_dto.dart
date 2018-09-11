library last_post_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'last_post_dto.g.dart';

abstract class LastPostDto implements Built<LastPostDto, LastPostDtoBuilder> {
  LastPostDto._();

  factory LastPostDto([updates(LastPostDtoBuilder b)]) = _$LastPostDto;

  @BuiltValueField(wireName: 'url')
  @nullable
  String get url;

  @BuiltValueField(wireName: 'author_name')
  @nullable
  String get authorName;

  @BuiltValueField(wireName: 'author_url')
  @nullable
  String get authorUrl;

  @BuiltValueField(wireName: 'date_posted')
  @nullable
  String get datePosted;

  String toJson() {
    return json.encode(serializers.serializeWith(LastPostDto.serializer, this));
  }

  static LastPostDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        LastPostDto.serializer, json.decode(jsonString));
  }

  static Serializer<LastPostDto> get serializer => _$lastPostDtoSerializer;
}
