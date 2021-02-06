library user_stats;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'user_stats.g.dart';

abstract class UserStats implements Built<UserStats, UserStatsBuilder> {
  UserStats._();

  factory UserStats([Function(UserStatsBuilder b) updates]) = _$UserStats;

  @BuiltValueField(wireName: 'days_watched')
  @nullable
  double get daysWatched;

  @BuiltValueField(wireName: 'days_read')
  @nullable
  double get daysRead;

  @BuiltValueField(wireName: 'mean_score')
  double get meanScore;

  @BuiltValueField(wireName: 'watching')
  @nullable
  int get watching;

  @BuiltValueField(wireName: 'reading')
  @nullable
  int get reading;

  @BuiltValueField(wireName: 'completed')
  int get completed;

  @BuiltValueField(wireName: 'on_hold')
  int get onHold;

  @BuiltValueField(wireName: 'dropped')
  int get dropped;

  @BuiltValueField(wireName: 'plan_to_watch')
  @nullable
  int get planToWatch;

  @BuiltValueField(wireName: 'plan_to_read')
  @nullable
  int get planToRead;

  @BuiltValueField(wireName: 'total_entries')
  int get totalEntries;

  @BuiltValueField(wireName: 'rewatched')
  @nullable
  int get rewatched;

  @BuiltValueField(wireName: 'reread')
  @nullable
  int get reread;

  @BuiltValueField(wireName: 'episodes_watched')
  @nullable
  int get episodesWatched;

  @BuiltValueField(wireName: 'chapters_read')
  @nullable
  int get chaptersRead;

  @BuiltValueField(wireName: 'volumes_read')
  @nullable
  int get volumesRead;

  String toJson() {
    return json.encode(serializers.serializeWith(UserStats.serializer, this));
  }

  static UserStats fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(UserStats.serializer, jsonMap);
  }

  static Serializer<UserStats> get serializer => _$userStatsSerializer;
}
