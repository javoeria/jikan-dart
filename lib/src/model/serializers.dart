library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  TopDto
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addBuilderFactory(
      const FullType(BuiltList, const [const FullType(TopDto)]),
          () => new ListBuilder<TopDto>())
  ..addPlugin(new StandardJsonPlugin()))
    .build();