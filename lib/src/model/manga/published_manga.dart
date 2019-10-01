library published_manga;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/info/generic_info.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'published_manga.g.dart';

abstract class PublishedManga
    implements Built<PublishedManga, PublishedMangaBuilder> {
  PublishedManga._();

  factory PublishedManga([updates(PublishedMangaBuilder b)]) = _$PublishedManga;

  @BuiltValueField(wireName: 'position')
  String get position;

  @BuiltValueField(wireName: 'manga')
  GenericInfo get manga;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PublishedManga.serializer, this));
  }

  static PublishedManga fromJson(String jsonString) {
    return serializers.deserializeWith(
        PublishedManga.serializer, json.decode(jsonString));
  }

  static Serializer<PublishedManga> get serializer =>
      _$publishedMangaSerializer;
}
