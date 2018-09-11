library forum_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/last_post_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'forum_dto.g.dart';

abstract class ForumDto implements Built<ForumDto, ForumDtoBuilder> {
  ForumDto._();

  factory ForumDto([updates(ForumDtoBuilder b)]) = _$ForumDto;

  @BuiltValueField(wireName: 'topic_id')
  int get topicId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'date_posted')
  String get datePosted;

  @BuiltValueField(wireName: 'author_name')
  String get authorName;

  @BuiltValueField(wireName: 'author_url')
  String get authorUrl;

  @BuiltValueField(wireName: 'replies')
  int get replies;

  @BuiltValueField(wireName: 'last_post')
  LastPostDto get lastPost;

  String toJson() {
    return json.encode(serializers.serializeWith(ForumDto.serializer, this));
  }

  static ForumDto fromJson(String jsonString) {
    return serializer.deserializeWith(
        ForumDto.serializer, json.decode(jsonString));
  }

  static Serializer<ForumDto> get serializer => _$forumDtoSerializer;
}
