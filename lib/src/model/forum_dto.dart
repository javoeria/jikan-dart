library forum_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/last_post_dto.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'forum_dto.g.dart';

abstract class ForumDto implements Built<ForumDto, ForumDtoBuilder> {

  static Serializer<ForumDto> get serializer => _$forumDtoSerializer;

  ForumDto._();

  factory ForumDto([updates(ForumDtoBuilder b)]) = _$ForumDto;

  @BuiltValueField(wireName: 'topic_id')
  @nullable
  int get topicId;

  @BuiltValueField(wireName: 'url')
  @nullable
  String get url;

  @BuiltValueField(wireName: 'title')
  @nullable
  String get title;

  @BuiltValueField(wireName: 'date_posted')
  @nullable
  String get datePosted;

  @BuiltValueField(wireName: 'author_name')
  @nullable
  String get authorName;

  @BuiltValueField(wireName: 'author_url')
  @nullable
  String get authorUrl;

  @BuiltValueField(wireName: 'replies')
  @nullable
  int get replies;

  @BuiltValueField(wireName: 'last_post')
  @nullable
  LastPostDto get lastPost;

  String toJson() {
    return json.encode(serializers.serializeWith(ForumDto.serializer, this));
  }

  static ForumDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ForumDto.serializer, json.decode(jsonString));
  }

}
