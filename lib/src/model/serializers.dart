library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_dart/src/model/aired_dto.dart';
import 'package:jikan_dart/src/model/anime_episode_dto.dart';
import 'package:jikan_dart/src/model/anime_episodes_dto.dart';
import 'package:jikan_dart/src/model/article_dto.dart';
import 'package:jikan_dart/src/model/forum_dto.dart';
import 'package:jikan_dart/src/model/genre/genre_list_dto.dart';
import 'package:jikan_dart/src/model/genre/mal_url_dto.dart';
import 'package:jikan_dart/src/model/last_post_dto.dart';
import 'package:jikan_dart/src/model/manga/manga_character_dto.dart';
import 'package:jikan_dart/src/model/more_info_dto.dart';
import 'package:jikan_dart/src/model/picture_dto.dart';
import 'package:jikan_dart/src/model/producer/producer_meta_dto.dart';
import 'package:jikan_dart/src/model/producer/producers_dto.dart';
import 'package:jikan_dart/src/model/promo_dto.dart';
import 'package:jikan_dart/src/model/recommendation_dto.dart';
import 'package:jikan_dart/src/model/schedule/schedule_dto.dart';
import 'package:jikan_dart/src/model/score_dto.dart';
import 'package:jikan_dart/src/model/scores_dto.dart';
import 'package:jikan_dart/src/model/season/anime_dto.dart';
import 'package:jikan_dart/src/model/season/genre_dto.dart';
import 'package:jikan_dart/src/model/season/producer_dto.dart';
import 'package:jikan_dart/src/model/season/season_dto.dart';
import 'package:jikan_dart/src/model/stats_dto.dart';
import 'package:jikan_dart/src/model/top_dto.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:jikan_dart/src/model/user/anime_stats_dto.dart';
import 'package:jikan_dart/src/model/user/favorite_item_dto.dart';
import 'package:jikan_dart/src/model/user/favorites_dto.dart';
import 'package:jikan_dart/src/model/user/history_result_dto.dart';
import 'package:jikan_dart/src/model/user/history_result_item_dto.dart';
import 'package:jikan_dart/src/model/user/manga_stats_dto.dart';
import 'package:jikan_dart/src/model/user/meta_dto.dart';
import 'package:jikan_dart/src/model/user/profile_result_dto.dart';

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
  LastPostDto,
  MangaCharacterDto,
  SeasonDto,
  AnimeDto,
  ProducerDto,
  GenreDto,
  ScheduleDto,
  GenreListDto,
  MalUrlDto,
  ProducersDto,
  ProducerMetaDto,
  ProfileResultDto,
  MangaStatsDto,
  AnimeStatsDto,
  FavoritesDto,
  FavoriteItemDto,
  MetaDto,
  HistoryResultItemDto,
  HistoryResultDto,
  RecommendationDto
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
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecommendationDto)]),
          () => new ListBuilder<RecommendationDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MangaCharacterDto)]),
          () => new ListBuilder<MangaCharacterDto>())
      ..addPlugin(new StandardJsonPlugin()))
    .build();
