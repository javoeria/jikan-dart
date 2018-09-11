library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/aired_dto.dart';
import 'package:jikan_dart/src/model/anime_episode_dto.dart';
import 'package:jikan_dart/src/model/anime_episodes_dto.dart';
import 'package:jikan_dart/src/model/article_dto.dart';
import 'package:jikan_dart/src/model/forum_dto.dart';
import 'package:jikan_dart/src/model/last_post_dto.dart';
import 'package:jikan_dart/src/model/more_info_dto.dart';
import 'package:jikan_dart/src/model/picture_dto.dart';
import 'package:jikan_dart/src/model/promo_dto.dart';
import 'package:jikan_dart/src/model/score_dto.dart';
import 'package:jikan_dart/src/model/scores_dto.dart';
import 'package:jikan_dart/src/model/stats_dto.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  TopDto,
  MoreInfoDto,
  AiredDto,
  AnimeEpisodesDto,
  AnimeEpisodeDto,
  ArticleDto,
  PictureDto,
  PromoDto,
  StatsDto,
  ScoresDto,
  ScoreDto,
  ForumDto,
  LastPostDto
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TopDto)]),
          () => new ListBuilder<TopDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ArticleDto)]),
          () => new ListBuilder<ArticleDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PictureDto)]),
          () => new ListBuilder<PictureDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PromoDto)]),
          () => new ListBuilder<PromoDto>())
      ..addPlugin(new StandardJsonPlugin()))
    .build();
