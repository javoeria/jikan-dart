library article_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'article_dto.g.dart';

abstract class ArticleDto implements Built<ArticleDto, ArticleDtoBuilder> {
  ArticleDto._();

  factory ArticleDto([updates(ArticleDtoBuilder b)]) = _$ArticleDto;

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
  String get imageUrl;
  @BuiltValueField(wireName: 'comments')
  int get comments;
  @BuiltValueField(wireName: 'intro')
  String get intro;
  String toJson() {
    return json.encode(serializers.serializeWith(ArticleDto.serializer, this));
  }

  static ArticleDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ArticleDto.serializer, json.decode(jsonString));
  }

  static Serializer<ArticleDto> get serializer => _$articleDtoSerializer;
}
