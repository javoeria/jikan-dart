library season_archive;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'season_archive.g.dart';

abstract class SeasonArchive
    implements Built<SeasonArchive, SeasonArchiveBuilder> {
  SeasonArchive._();

  factory SeasonArchive([Function(SeasonArchiveBuilder b) updates]) =
      _$SeasonArchive;

  @BuiltValueField(wireName: 'year')
  int get year;

  @BuiltValueField(wireName: 'seasons')
  BuiltList<String> get seasons;

  String toJson() {
    return serializers.toJson(SeasonArchive.serializer, this);
  }

  static SeasonArchive fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(SeasonArchive.serializer, jsonMap)!;
  }

  static Serializer<SeasonArchive> get serializer => _$seasonArchiveSerializer;
}
