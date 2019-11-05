library user_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'user_item.g.dart';

abstract class UserItem implements Built<UserItem, UserItemBuilder> {
  UserItem._();

  factory UserItem([updates(UserItemBuilder b)]) = _$UserItem;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'score')
  int get score;

  @BuiltValueField(wireName: 'watched_episodes')
  @nullable
  int get watchedEpisodes;

  @BuiltValueField(wireName: 'total_episodes')
  @nullable
  int get totalEpisodes;

  @BuiltValueField(wireName: 'watching_status')
  @nullable
  int get watchingStatus;

  @BuiltValueField(wireName: 'read_chapters')
  @nullable
  int get readChapters;

  @BuiltValueField(wireName: 'read_volumes')
  @nullable
  int get readVolumes;

  @BuiltValueField(wireName: 'total_chapters')
  @nullable
  int get totalChapters;

  @BuiltValueField(wireName: 'total_volumes')
  @nullable
  int get totalVolumes;

  @BuiltValueField(wireName: 'reading_status')
  @nullable
  int get readingStatus;

  String toJson() {
    return json.encode(serializers.serializeWith(UserItem.serializer, this));
  }

  static UserItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserItem.serializer, json.decode(jsonString));
  }

  static Serializer<UserItem> get serializer => _$userItemSerializer;
}
