library magazine;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/common/meta.dart';
import 'package:jikan_dart/src/model/manga/manga_item.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'magazine.g.dart';

abstract class Magazine implements Built<Magazine, MagazineBuilder> {
  Magazine._();

  factory Magazine([updates(MagazineBuilder b)]) = _$Magazine;

  @BuiltValueField(wireName: 'meta')
  Meta get meta;

  @BuiltValueField(wireName: 'manga')
  BuiltList<MangaItem> get manga;

  String toJson() {
    return json.encode(serializers.serializeWith(Magazine.serializer, this));
  }

  static Magazine fromJson(String jsonString) {
    return serializers.deserializeWith(
        Magazine.serializer, json.decode(jsonString));
  }

  static Serializer<Magazine> get serializer => _$magazineSerializer;
}
