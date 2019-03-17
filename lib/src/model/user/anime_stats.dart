library anime_stats;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/serializers.dart';

part 'anime_stats.g.dart';

abstract class AnimeStats implements Built<AnimeStats, AnimeStatsBuilder> {
  AnimeStats._();

  factory AnimeStats([updates(AnimeStatsBuilder b)]) = _$AnimeStats;

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
    return json.encode(serializers.serializeWith(AnimeStats.serializer, this));
  }

  static AnimeStats fromJson(String jsonString) {
    return serializers.deserializeWith(
        AnimeStats.serializer, json.decode(jsonString));
  }

  static Serializer<AnimeStats> get serializer => _$animeStatsSerializer;
}
