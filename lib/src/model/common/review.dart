library review;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/reviewer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'review.g.dart';

abstract class Review implements Built<Review, ReviewBuilder> {
  Review._();

  factory Review([Function(ReviewBuilder b) updates]) = _$Review;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;

  @BuiltValueField(wireName: 'helpful_count')
  int get helpfulCount;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'reviewer')
  Reviewer get reviewer;

  @BuiltValueField(wireName: 'content')
  String get content;

  String toJson() {
    return json.encode(serializers.serializeWith(Review.serializer, this));
  }

  static Review fromJson(String jsonString) {
    return serializers.deserializeWith(
        Review.serializer, json.decode(jsonString));
  }

  static Serializer<Review> get serializer => _$reviewSerializer;
}
