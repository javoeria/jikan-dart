library published_manga;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'published_manga.g.dart';

abstract class PublishedManga
    implements Built<PublishedManga, PublishedMangaBuilder> {
  PublishedManga._();

  factory PublishedManga([Function(PublishedMangaBuilder b) updates]) =
      _$PublishedManga;

  @BuiltValueField(wireName: 'position')
  String get position;

  @BuiltValueField(wireName: 'manga')
  GenericInfo get manga;

  String toJson() {
    return serializers.toJson(PublishedManga.serializer, this);
  }

  static PublishedManga fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(PublishedManga.serializer, jsonMap)!;
  }

  static Serializer<PublishedManga> get serializer =>
      _$publishedMangaSerializer;
}
