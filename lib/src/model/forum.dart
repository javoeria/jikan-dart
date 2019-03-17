library forum;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/last_post.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'forum.g.dart';

abstract class Forum implements Built<Forum, ForumBuilder> {
  static Serializer<Forum> get serializer => _$forumSerializer;

  Forum._();

  factory Forum([updates(ForumBuilder b)]) = _$Forum;

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
  LastPost get lastPost;

  String toJson() {
    return json.encode(serializers.serializeWith(Forum.serializer, this));
  }

  static Forum fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forum.serializer, json.decode(jsonString));
  }
}
