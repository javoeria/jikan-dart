library manga_stats_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_stats_dto.g.dart';

abstract class MangaStatsDto
    implements Built<MangaStatsDto, MangaStatsDtoBuilder> {
  MangaStatsDto._();

  factory MangaStatsDto([updates(MangaStatsDtoBuilder b)]) = _$MangaStatsDto;

  @BuiltValueField(wireName: 'days_read')
  double get daysRead;

  @BuiltValueField(wireName: 'mean_score')
  int get meanScore;

  @BuiltValueField(wireName: 'reading')
  int get reading;

  @BuiltValueField(wireName: 'completed')
  int get completed;

  @BuiltValueField(wireName: 'on_hold')
  int get onHold;

  @BuiltValueField(wireName: 'dropped')
  int get dropped;

  @BuiltValueField(wireName: 'plan_to_read')
  int get planToRead;

  @BuiltValueField(wireName: 'total_entries')
  int get totalEntries;

  @BuiltValueField(wireName: 'reread')
  int get reread;

  @BuiltValueField(wireName: 'chapters_read')
  int get chaptersRead;

  @BuiltValueField(wireName: 'volumes_read')
  int get volumesRead;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MangaStatsDto.serializer, this));
  }

  static MangaStatsDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        MangaStatsDto.serializer, json.decode(jsonString));
  }

  static Serializer<MangaStatsDto> get serializer => _$mangaStatsDtoSerializer;
}
