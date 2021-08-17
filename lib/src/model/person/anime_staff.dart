library anime_staff;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'anime_staff.g.dart';

abstract class AnimeStaff implements Built<AnimeStaff, AnimeStaffBuilder> {
  AnimeStaff._();

  factory AnimeStaff([Function(AnimeStaffBuilder b) updates]) = _$AnimeStaff;

  @BuiltValueField(wireName: 'position')
  String get position;

  @BuiltValueField(wireName: 'anime')
  GenericInfo get anime;

  String toJson() {
    return serializers.toJson(AnimeStaff.serializer, this);
  }

  static AnimeStaff fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(AnimeStaff.serializer, jsonMap)!;
  }

  static Serializer<AnimeStaff> get serializer => _$animeStaffSerializer;
}
