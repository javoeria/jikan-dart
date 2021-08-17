library article;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  Article._();

  factory Article([Function(ArticleBuilder b) updates]) = _$Article;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'author_name')
  String get authorName;

  @BuiltValueField(wireName: 'author_url')
  String get authorUrl;

  @BuiltValueField(wireName: 'forum_url')
  String get forumUrl;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'comments')
  int get comments;

  @BuiltValueField(wireName: 'intro')
  String get intro;

  String toJson() {
    return json.encode(serializers.serializeWith(Article.serializer, this));
  }

  static Article fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Article.serializer, jsonMap)!;
  }

  static Serializer<Article> get serializer => _$articleSerializer;
}
