library anime;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/aired.dart';
import 'package:jikan_api/src/model/common/generic_info.dart';
import 'package:jikan_api/src/model/common/related.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'anime.g.dart';

abstract class Anime implements Built<Anime, AnimeBuilder> {
  Anime._();

  factory Anime([Function(AnimeBuilder b) updates]) = _$Anime;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'trailer_url')
  String? get trailerUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_english')
  String? get titleEnglish;

  @BuiltValueField(wireName: 'title_japanese')
  String? get titleJapanese;

  @BuiltValueField(wireName: 'title_synonyms')
  BuiltList<String> get titleSynonyms;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'source')
  String? get source;

  @BuiltValueField(wireName: 'episodes')
  int? get episodes;

  @BuiltValueField(wireName: 'status')
  String? get status;

  @BuiltValueField(wireName: 'airing')
  bool get airing;

  @BuiltValueField(wireName: 'aired')
  Aired get aired;

  @BuiltValueField(wireName: 'duration')
  String? get duration;

  @BuiltValueField(wireName: 'rating')
  String? get rating;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'scored_by')
  int? get scoredBy;

  @BuiltValueField(wireName: 'rank')
  int? get rank;

  @BuiltValueField(wireName: 'popularity')
  int? get popularity;

  @BuiltValueField(wireName: 'members')
  int? get members;

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: 'background')
  String? get background;

  @BuiltValueField(wireName: 'season')
  String? get season;

  @BuiltValueField(wireName: 'year')
  int? get year;

  @BuiltValueField(wireName: 'broadcast')
  String? get broadcast;

  @BuiltValueField(wireName: 'producers')
  BuiltList<GenericInfo> get producers;

  @BuiltValueField(wireName: 'licensors')
  BuiltList<GenericInfo> get licensors;

  @BuiltValueField(wireName: 'studios')
  BuiltList<GenericInfo> get studios;

  @BuiltValueField(wireName: 'genres')
  BuiltList<GenericInfo> get genres;

  @BuiltValueField(wireName: 'explicit_genres')
  BuiltList<GenericInfo> get explicitGenres;

  @BuiltValueField(wireName: 'themes')
  BuiltList<GenericInfo> get themes;

  @BuiltValueField(wireName: 'demographics')
  BuiltList<GenericInfo> get demographics;

  @BuiltValueField(wireName: 'relations')
  BuiltList<Related>? get relations;

  @BuiltValueField(wireName: 'opening_themes')
  BuiltList<String>? get openingThemes;

  @BuiltValueField(wireName: 'ending_themes')
  BuiltList<String>? get endingThemes;

  String toJson() {
    return serializers.toJson(Anime.serializer, this);
  }

  static Anime fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['images']['jpg']['large_image_url'];
    jsonMap['trailer_url'] = jsonMap['trailer']['embed_url'];
    // jsonMap['aired'] = jsonMap['aired']['string'];
    jsonMap['broadcast'] = jsonMap['broadcast']['string'];
    if (jsonMap['theme'] != null) {
      jsonMap['opening_themes'] = jsonMap['theme']['openings'];
      jsonMap['ending_themes'] = jsonMap['theme']['endings'];
    }
    return serializers.deserializeWith(Anime.serializer, jsonMap)!;
  }

  static Serializer<Anime> get serializer => _$animeSerializer;
}
