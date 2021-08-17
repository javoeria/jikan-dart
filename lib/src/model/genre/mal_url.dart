library mal_url_;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'mal_url.g.dart';

abstract class MalUrl implements Built<MalUrl, MalUrlBuilder> {
  MalUrl._();

  factory MalUrl([Function(MalUrlBuilder b) updates]) = _$MalUrl;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return serializers.toJson(MalUrl.serializer, this);
  }

  static MalUrl fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(MalUrl.serializer, jsonMap)!;
  }

  static Serializer<MalUrl> get serializer => _$malUrlSerializer;
}
