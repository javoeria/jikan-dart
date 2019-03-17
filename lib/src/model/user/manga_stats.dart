library manga_stats;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'manga_stats.g.dart';

abstract class MangaStats implements Built<MangaStats, MangaStatsBuilder> {
  MangaStats._();

  factory MangaStats([updates(MangaStatsBuilder b)]) = _$MangaStats;

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
    return json.encode(serializers.serializeWith(MangaStats.serializer, this));
  }

  static MangaStats fromJson(String jsonString) {
    return serializers.deserializeWith(
        MangaStats.serializer, json.decode(jsonString));
  }

  static Serializer<MangaStats> get serializer => _$mangaStatsSerializer;
}
