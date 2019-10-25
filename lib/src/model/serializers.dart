library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:jikan_dart/src/model/anime/anime_episode.dart';
import 'package:jikan_dart/src/model/anime/anime_staff.dart';
import 'package:jikan_dart/src/model/anime/anime_user_update.dart';
import 'package:jikan_dart/src/model/anime/character.dart';
import 'package:jikan_dart/src/model/anime/character_staff.dart';
import 'package:jikan_dart/src/model/anime/promo.dart';
import 'package:jikan_dart/src/model/anime/staff.dart';
import 'package:jikan_dart/src/model/anime/voice_acting.dart';
import 'package:jikan_dart/src/model/common/aired.dart';
import 'package:jikan_dart/src/model/common/article.dart';
import 'package:jikan_dart/src/model/common/forum.dart';
import 'package:jikan_dart/src/model/common/last_post.dart';
import 'package:jikan_dart/src/model/common/more_info.dart';
import 'package:jikan_dart/src/model/common/picture.dart';
import 'package:jikan_dart/src/model/common/recommendation.dart';
import 'package:jikan_dart/src/model/common/related.dart';
import 'package:jikan_dart/src/model/common/review.dart';
import 'package:jikan_dart/src/model/common/review_score.dart';
import 'package:jikan_dart/src/model/common/reviewer.dart';
import 'package:jikan_dart/src/model/common/score.dart';
import 'package:jikan_dart/src/model/common/scores.dart';
import 'package:jikan_dart/src/model/common/stats.dart';
import 'package:jikan_dart/src/model/common/voice_actor.dart';
import 'package:jikan_dart/src/model/genre/genre_list.dart';
import 'package:jikan_dart/src/model/genre/mal_url.dart';
import 'package:jikan_dart/src/model/info/anime_info.dart';
import 'package:jikan_dart/src/model/info/character_info.dart';
import 'package:jikan_dart/src/model/info/generic_info.dart';
import 'package:jikan_dart/src/model/info/manga_info.dart';
import 'package:jikan_dart/src/model/info/person_info.dart';
import 'package:jikan_dart/src/model/manga/manga_character.dart';
import 'package:jikan_dart/src/model/manga/manga_user_update.dart';
import 'package:jikan_dart/src/model/manga/published_manga.dart';
import 'package:jikan_dart/src/model/producer/producer_meta.dart';
import 'package:jikan_dart/src/model/producer/producers.dart';
import 'package:jikan_dart/src/model/schedule/schedule.dart';
import 'package:jikan_dart/src/model/search/search.dart';
import 'package:jikan_dart/src/model/season/anime.dart';
import 'package:jikan_dart/src/model/season/producer.dart';
import 'package:jikan_dart/src/model/season/season.dart';
import 'package:jikan_dart/src/model/season/season_archive.dart';
import 'package:jikan_dart/src/model/season/season_genre.dart';
import 'package:jikan_dart/src/model/top/top.dart';
import 'package:jikan_dart/src/model/user/anime_item.dart';
import 'package:jikan_dart/src/model/user/anime_stats.dart';
import 'package:jikan_dart/src/model/user/favorite_item.dart';
import 'package:jikan_dart/src/model/user/favorites.dart';
import 'package:jikan_dart/src/model/user/friend_result.dart';
import 'package:jikan_dart/src/model/user/history_result.dart';
import 'package:jikan_dart/src/model/user/manga_item.dart';
import 'package:jikan_dart/src/model/user/manga_stats.dart';
import 'package:jikan_dart/src/model/user/meta.dart';
import 'package:jikan_dart/src/model/user/profile_result.dart';

part 'serializers.g.dart';

@SerializersFor([
  Aired,
  Anime,
  AnimeEpisode,
  AnimeInfo,
  AnimeItem,
  AnimeStaff,
  AnimeStats,
  AnimeUserUpdate,
  Article,
  Character,
  CharacterInfo,
  CharacterStaff,
  FavoriteItem,
  Favorites,
  Forum,
  FriendResult,
  GenericInfo,
  GenreList,
  HistoryResult,
  LastPost,
  MalUrl,
  MangaCharacter,
  MangaInfo,
  MangaItem,
  MangaStats,
  MangaUserUpdate,
  Meta,
  MoreInfo,
  PersonInfo,
  Picture,
  Producer,
  ProducerMeta,
  Producers,
  ProfileResult,
  Promo,
  PublishedManga,
  Recommendation,
  Related,
  Review,
  ReviewScore,
  Reviewer,
  Schedule,
  Score,
  Scores,
  Search,
  Season,
  SeasonArchive,
  SeasonGenre,
  Staff,
  Stats,
  Top,
  VoiceActing,
  VoiceActor,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(const FullType(BuiltList, [FullType(AnimeEpisode)]),
          () => ListBuilder<AnimeEpisode>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(AnimeItem)]),
          () => ListBuilder<AnimeItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(AnimeUserUpdate)]),
          () => ListBuilder<AnimeUserUpdate>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Article)]),
          () => ListBuilder<Article>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Forum)]),
          () => ListBuilder<Forum>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(FriendResult)]),
          () => ListBuilder<FriendResult>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(HistoryResult)]),
          () => ListBuilder<HistoryResult>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(MangaCharacter)]),
          () => ListBuilder<MangaCharacter>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(MangaItem)]),
          () => ListBuilder<MangaItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(MangaUserUpdate)]),
          () => ListBuilder<MangaUserUpdate>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Picture)]),
          () => ListBuilder<Picture>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Promo)]),
          () => ListBuilder<Promo>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Recommendation)]),
          () => ListBuilder<Recommendation>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Review)]),
          () => ListBuilder<Review>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Search)]),
          () => ListBuilder<Search>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(SeasonArchive)]),
          () => ListBuilder<SeasonArchive>())
      ..addBuilderFactory(
          const FullType(BuiltList, [FullType(Top)]), () => ListBuilder<Top>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
