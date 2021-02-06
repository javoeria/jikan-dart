library magazine;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/meta.dart';
import 'package:jikan_api/src/model/manga/manga_item.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'magazine.g.dart';

abstract class Magazine implements Built<Magazine, MagazineBuilder> {
  Magazine._();

  factory Magazine([Function(MagazineBuilder b) updates]) = _$Magazine;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'manga')
  BuiltList<MangaItem> get manga;

  String toJson() {
    return json.encode(serializers.serializeWith(Magazine.serializer, this));
  }

  static Magazine fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Magazine.serializer, jsonMap);
  }

  static Serializer<Magazine> get serializer => _$magazineSerializer;
}
