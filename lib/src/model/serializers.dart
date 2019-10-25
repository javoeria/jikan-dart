library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:jikan_dart/src/model/anime/anime_episode.dart';
import 'package:jikan_dart/src/model/anime/anime_staff.dart';
import 'package:jikan_dart/src/model/anime/character_staff.dart';
import 'package:jikan_dart/src/model/anime/promo.dart';
import 'package:jikan_dart/src/model/anime/staff.dart';
import 'package:jikan_dart/src/model/anime/voice_acting.dart';
import 'package:jikan_dart/src/model/common/aired.dart';
import 'package:jikan_dart/src/model/common/article.dart';
import 'package:jikan_dart/src/model/common/character.dart';
import 'package:jikan_dart/src/model/common/forum.dart';
import 'package:jikan_dart/src/model/common/last_post.dart';
import 'package:jikan_dart/src/model/common/meta.dart';
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
import 'package:jikan_dart/src/model/common/user_update.dart';
import 'package:jikan_dart/src/model/common/voice_actor.dart';
import 'package:jikan_dart/src/model/genre/genre_list.dart';
import 'package:jikan_dart/src/model/genre/mal_url.dart';
import 'package:jikan_dart/src/model/info/anime_info.dart';
import 'package:jikan_dart/src/model/info/character_info.dart';
import 'package:jikan_dart/src/model/info/generic_info.dart';
import 'package:jikan_dart/src/model/info/manga_info.dart';
import 'package:jikan_dart/src/model/info/person_info.dart';
import 'package:jikan_dart/src/model/manga/published_manga.dart';
import 'package:jikan_dart/src/model/producer/producer.dart';
import 'package:jikan_dart/src/model/schedule/schedule.dart';
import 'package:jikan_dart/src/model/search/search.dart';
import 'package:jikan_dart/src/model/season/anime.dart';
import 'package:jikan_dart/src/model/season/season.dart';
import 'package:jikan_dart/src/model/season/season_archive.dart';
import 'package:jikan_dart/src/model/top/top.dart';
import 'package:jikan_dart/src/model/user/anime_item.dart';
import 'package:jikan_dart/src/model/user/anime_stats.dart';
import 'package:jikan_dart/src/model/user/favorite_item.dart';
import 'package:jikan_dart/src/model/user/favorites.dart';
import 'package:jikan_dart/src/model/user/friend.dart';
import 'package:jikan_dart/src/model/user/history.dart';
import 'package:jikan_dart/src/model/user/manga_item.dart';
import 'package:jikan_dart/src/model/user/manga_stats.dart';
import 'package:jikan_dart/src/model/user/user_profile.dart';

part 'serializers.g.dart';

@SerializersFor([
  Aired,
  Anime,
  AnimeEpisode,
  AnimeInfo,
  AnimeItem,
  AnimeStaff,
  AnimeStats,
  Article,
  Character,
  CharacterInfo,
  CharacterStaff,
  FavoriteItem,
  Favorites,
  Forum,
  Friend,
  GenericInfo,
  GenreList,
  History,
  LastPost,
  MalUrl,
  MangaInfo,
  MangaItem,
  MangaStats,
  Meta,
  MoreInfo,
  PersonInfo,
  Picture,
  Producer,
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
  Staff,
  Stats,
  Top,
  UserProfile,
  UserUpdate,
  VoiceActing,
  VoiceActor,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(const FullType(BuiltList, [FullType(AnimeEpisode)]),
          () => ListBuilder<AnimeEpisode>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(AnimeItem)]),
          () => ListBuilder<AnimeItem>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Article)]),
          () => ListBuilder<Article>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Forum)]),
          () => ListBuilder<Forum>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Friend)]),
          () => ListBuilder<Friend>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(History)]),
          () => ListBuilder<History>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(MangaItem)]),
          () => ListBuilder<MangaItem>())
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
      ..addBuilderFactory(const FullType(BuiltList, [FullType(UserUpdate)]),
          () => ListBuilder<UserUpdate>())
      ..addPlugin(StandardJsonPlugin()))
    .build();
