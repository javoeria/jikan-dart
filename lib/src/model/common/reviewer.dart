library reviewer;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/review_score.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'reviewer.g.dart';

abstract class Reviewer implements Built<Reviewer, ReviewerBuilder> {
  Reviewer._();

  factory Reviewer([Function(ReviewerBuilder b) updates]) = _$Reviewer;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'episodes_watched')
  int? get episodesWatched;

  @BuiltValueField(wireName: 'chapters_read')
  int? get chaptersRead;

  @BuiltValueField(wireName: 'scores')
  ReviewScore get scores;

  String toJson() {
    return serializers.toJson(Reviewer.serializer, this);
  }

  static Reviewer fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Reviewer.serializer, jsonMap)!;
  }

  static Serializer<Reviewer> get serializer => _$reviewerSerializer;
}
