library last_post;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'last_post.g.dart';

abstract class LastPost implements Built<LastPost, LastPostBuilder> {
  LastPost._();

  factory LastPost([Function(LastPostBuilder b) updates]) = _$LastPost;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'author_name')
  String get authorName;

  @BuiltValueField(wireName: 'author_url')
  String get authorUrl;

  @BuiltValueField(wireName: 'date_posted')
  String? get datePosted;

  String toJson() {
    return serializers.toJson(LastPost.serializer, this);
  }

  static LastPost fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(LastPost.serializer, jsonMap)!;
  }

  static Serializer<LastPost> get serializer => _$lastPostSerializer;
}
