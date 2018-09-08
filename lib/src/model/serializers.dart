library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/aired_dto.dart';
import 'package:jikan_dart/src/model/anime_episode_dto.dart';
import 'package:jikan_dart/src/model/anime_episodes_dto.dart';
import 'package:jikan_dart/src/model/article_dto.dart';
import 'package:jikan_dart/src/model/more_info_dto.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(
    const [TopDto, MoreInfoDto, AiredDto, AnimeEpisodesDto, AnimeEpisodeDto, ArticleDto])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TopDto)]),
          () => new ListBuilder<TopDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ArticleDto)]),
              () => new ListBuilder<ArticleDto>())
      ..addPlugin(new StandardJsonPlugin()))
    .build();
