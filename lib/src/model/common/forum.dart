library forum;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/last_post.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'forum.g.dart';

abstract class Forum implements Built<Forum, ForumBuilder> {
  static Serializer<Forum> get serializer => _$forumSerializer;

  Forum._();

  factory Forum([Function(ForumBuilder b) updates]) = _$Forum;

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
  LastPost get lastPost;

  String toJson() {
    return json.encode(serializers.serializeWith(Forum.serializer, this));
  }

  static Forum fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forum.serializer, json.decode(jsonString));
  }
}
