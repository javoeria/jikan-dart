library genre;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_item.dart';
import 'package:jikan_api/src/model/genre/mal_url.dart';
import 'package:jikan_api/src/model/manga/manga_item.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'genre.g.dart';

abstract class Genre implements Built<Genre, GenreBuilder> {
  Genre._();

  factory Genre([Function(GenreBuilder b) updates]) = _$Genre;

  @BuiltValueField(wireName: 'mal_url')
  MalUrl get malUrl;

  @BuiltValueField(wireName: 'item_count')
  int get itemCount;

  @BuiltValueField(wireName: 'anime')
  @nullable
  BuiltList<AnimeItem> get anime;

  @BuiltValueField(wireName: 'manga')
  @nullable
  BuiltList<MangaItem> get manga;

  String toJson() {
    return json.encode(serializers.serializeWith(Genre.serializer, this));
  }

  static Genre fromJson(String jsonString) {
    return serializers.deserializeWith(
        Genre.serializer, json.decode(jsonString));
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
}
