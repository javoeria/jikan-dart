library review;

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
  String? get type;

  @BuiltValueField(wireName: 'votes')
  int get votes;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'user')
  Reviewer get user;

  @BuiltValueField(wireName: 'review')
  String get review;

  String toJson() {
    return serializers.toJson(Review.serializer, this);
  }

  static Review fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['user']['image_url'] =
        jsonMap['user']['images']['jpg']['image_url'];
    jsonMap['user']['episodes_watched'] = jsonMap['episodes_watched'];
    jsonMap['user']['chapters_read'] = jsonMap['chapters_read'];
    jsonMap['user']['scores'] = jsonMap['scores'];
    return serializers.deserializeWith(Review.serializer, jsonMap)!;
  }

  static Serializer<Review> get serializer => _$reviewSerializer;
}
