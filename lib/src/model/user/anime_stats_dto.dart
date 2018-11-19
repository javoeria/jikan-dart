library anime_stats_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_stats_dto.g.dart';

abstract class AnimeStatsDto implements Built<AnimeStatsDto, AnimeStatsDtoBuilder> {
  AnimeStatsDto._();

  factory AnimeStatsDto([updates(AnimeStatsDtoBuilder b)]) = _$AnimeStatsDto;

  @BuiltValueField(wireName: 'days_watched')
  double get daysWatched;

  @BuiltValueField(wireName: 'mean_score')
  double get meanScore;

  @BuiltValueField(wireName: 'watching')
  int get watching;

  @BuiltValueField(wireName: 'completed')
  int get completed;

  @BuiltValueField(wireName: 'on_hold')
  int get onHold;

  @BuiltValueField(wireName: 'dropped')
  int get dropped;

  @BuiltValueField(wireName: 'plan_to_watch')
  int get planToWatch;

  @BuiltValueField(wireName: 'total_entries')
  int get totalEntries;

  @BuiltValueField(wireName: 'rewatched')
  int get rewatched;

  @BuiltValueField(wireName: 'episodes_watched')
  int get episodesWatched;

  String toJson() {
    return json.encode(serializers.serializeWith(AnimeStatsDto.serializer, this));
  }

  static AnimeStatsDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeStatsDto.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeStatsDto> get serializer => _$animeStatsDtoSerializer;
}
