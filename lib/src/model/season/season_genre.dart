library season_genre;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'season_genre.g.dart';

abstract class SeasonGenre implements Built<SeasonGenre, SeasonGenreBuilder> {
  SeasonGenre._();

  factory SeasonGenre([updates(SeasonGenreBuilder b)]) = _$SeasonGenre;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(SeasonGenre.serializer, this));
  }

  static SeasonGenre fromJson(String jsonString) {
    return serializers.deserializeWith(
        SeasonGenre.serializer, json.decode(jsonString));
  }

  static Serializer<SeasonGenre> get serializer => _$seasonGenreSerializer;
}
