library last_post;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'last_post.g.dart';

abstract class LastPost implements Built<LastPost, LastPostBuilder> {
  LastPost._();

  factory LastPost([updates(LastPostBuilder b)]) = _$LastPost;

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
    return json.encode(serializers.serializeWith(LastPost.serializer, this));
  }

  static LastPost fromJson(String jsonString) {
    return serializers.deserializeWith(
        LastPost.serializer, json.decode(jsonString));
  }

  static Serializer<LastPost> get serializer => _$lastPostSerializer;
}
