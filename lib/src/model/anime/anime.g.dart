// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Anime> _$animeSerializer = new _$AnimeSerializer();

class _$AnimeSerializer implements StructuredSerializer<Anime> {
  @override
  final Iterable<Type> types = const [Anime, _$Anime];
  @override
  final String wireName = 'Anime';

  @override
  Iterable<Object?> serialize(Serializers serializers, Anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'title_synonyms',
      serializers.serialize(object.titleSynonyms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'airing',
      serializers.serialize(object.airing, specifiedType: const FullType(bool)),
      'aired',
      serializers.serialize(object.aired, specifiedType: const FullType(Aired)),
      'producers',
      serializers.serialize(object.producers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'licensors',
      serializers.serialize(object.licensors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'studios',
      serializers.serialize(object.studios,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'explicit_genres',
      serializers.serialize(object.explicitGenres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'themes',
      serializers.serialize(object.themes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'demographics',
      serializers.serialize(object.demographics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
    ];
    Object? value;
    value = object.trailerUrl;
    if (value != null) {
      result
        ..add('trailer_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleEnglish;
    if (value != null) {
      result
        ..add('title_english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleJapanese;
    if (value != null) {
      result
        ..add('title_japanese')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.scoredBy;
    if (value != null) {
      result
        ..add('scored_by')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rank;
    if (value != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.synopsis;
    if (value != null) {
      result
        ..add('synopsis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.background;
    if (value != null) {
      result
        ..add('background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.broadcast;
    if (value != null) {
      result
        ..add('broadcast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.relations;
    if (value != null) {
      result
        ..add('relations')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Related)])));
    }
    value = object.openingThemes;
    if (value != null) {
      result
        ..add('opening_themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.endingThemes;
    if (value != null) {
      result
        ..add('ending_themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Anime deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trailer_url':
          result.trailerUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_english':
          result.titleEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_synonyms':
          result.titleSynonyms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'airing':
          result.airing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'aired':
          result.aired.replace(serializers.deserialize(value,
              specifiedType: const FullType(Aired))! as Aired);
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'scored_by':
          result.scoredBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'synopsis':
          result.synopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'broadcast':
          result.broadcast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'producers':
          result.producers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'licensors':
          result.licensors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'explicit_genres':
          result.explicitGenres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'themes':
          result.themes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'demographics':
          result.demographics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'relations':
          result.relations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Related)]))!
              as BuiltList<Object?>);
          break;
        case 'opening_themes':
          result.openingThemes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ending_themes':
          result.endingThemes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Anime extends Anime {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String? trailerUrl;
  @override
  final String title;
  @override
  final String? titleEnglish;
  @override
  final String? titleJapanese;
  @override
  final BuiltList<String> titleSynonyms;
  @override
  final String? type;
  @override
  final String? source;
  @override
  final int? episodes;
  @override
  final String? status;
  @override
  final bool airing;
  @override
  final Aired aired;
  @override
  final String? duration;
  @override
  final String? rating;
  @override
  final double? score;
  @override
  final int? scoredBy;
  @override
  final int? rank;
  @override
  final int? popularity;
  @override
  final int? members;
  @override
  final int? favorites;
  @override
  final String? synopsis;
  @override
  final String? background;
  @override
  final String? season;
  @override
  final int? year;
  @override
  final String? broadcast;
  @override
  final BuiltList<GenericInfo> producers;
  @override
  final BuiltList<GenericInfo> licensors;
  @override
  final BuiltList<GenericInfo> studios;
  @override
  final BuiltList<GenericInfo> genres;
  @override
  final BuiltList<GenericInfo> explicitGenres;
  @override
  final BuiltList<GenericInfo> themes;
  @override
  final BuiltList<GenericInfo> demographics;
  @override
  final BuiltList<Related>? relations;
  @override
  final BuiltList<String>? openingThemes;
  @override
  final BuiltList<String>? endingThemes;

  factory _$Anime([void Function(AnimeBuilder)? updates]) =>
      (new AnimeBuilder()..update(updates)).build();

  _$Anime._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      this.trailerUrl,
      required this.title,
      this.titleEnglish,
      this.titleJapanese,
      required this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      required this.airing,
      required this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      this.broadcast,
      required this.producers,
      required this.licensors,
      required this.studios,
      required this.genres,
      required this.explicitGenres,
      required this.themes,
      required this.demographics,
      this.relations,
      this.openingThemes,
      this.endingThemes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Anime', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Anime', 'url');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Anime', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(title, 'Anime', 'title');
    BuiltValueNullFieldError.checkNotNull(
        titleSynonyms, 'Anime', 'titleSynonyms');
    BuiltValueNullFieldError.checkNotNull(airing, 'Anime', 'airing');
    BuiltValueNullFieldError.checkNotNull(aired, 'Anime', 'aired');
    BuiltValueNullFieldError.checkNotNull(producers, 'Anime', 'producers');
    BuiltValueNullFieldError.checkNotNull(licensors, 'Anime', 'licensors');
    BuiltValueNullFieldError.checkNotNull(studios, 'Anime', 'studios');
    BuiltValueNullFieldError.checkNotNull(genres, 'Anime', 'genres');
    BuiltValueNullFieldError.checkNotNull(
        explicitGenres, 'Anime', 'explicitGenres');
    BuiltValueNullFieldError.checkNotNull(themes, 'Anime', 'themes');
    BuiltValueNullFieldError.checkNotNull(
        demographics, 'Anime', 'demographics');
  }

  @override
  Anime rebuild(void Function(AnimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeBuilder toBuilder() => new AnimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Anime &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        trailerUrl == other.trailerUrl &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleJapanese == other.titleJapanese &&
        titleSynonyms == other.titleSynonyms &&
        type == other.type &&
        source == other.source &&
        episodes == other.episodes &&
        status == other.status &&
        airing == other.airing &&
        aired == other.aired &&
        duration == other.duration &&
        rating == other.rating &&
        score == other.score &&
        scoredBy == other.scoredBy &&
        rank == other.rank &&
        popularity == other.popularity &&
        members == other.members &&
        favorites == other.favorites &&
        synopsis == other.synopsis &&
        background == other.background &&
        season == other.season &&
        year == other.year &&
        broadcast == other.broadcast &&
        producers == other.producers &&
        licensors == other.licensors &&
        studios == other.studios &&
        genres == other.genres &&
        explicitGenres == other.explicitGenres &&
        themes == other.themes &&
        demographics == other.demographics &&
        relations == other.relations &&
        openingThemes == other.openingThemes &&
        endingThemes == other.endingThemes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode), trailerUrl.hashCode), title.hashCode), titleEnglish.hashCode), titleJapanese.hashCode), titleSynonyms.hashCode), type.hashCode), source.hashCode), episodes.hashCode), status.hashCode), airing.hashCode), aired.hashCode), duration.hashCode), rating.hashCode), score.hashCode), scoredBy.hashCode),
                                                                                rank.hashCode),
                                                                            popularity.hashCode),
                                                                        members.hashCode),
                                                                    favorites.hashCode),
                                                                synopsis.hashCode),
                                                            background.hashCode),
                                                        season.hashCode),
                                                    year.hashCode),
                                                broadcast.hashCode),
                                            producers.hashCode),
                                        licensors.hashCode),
                                    studios.hashCode),
                                genres.hashCode),
                            explicitGenres.hashCode),
                        themes.hashCode),
                    demographics.hashCode),
                relations.hashCode),
            openingThemes.hashCode),
        endingThemes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Anime')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('trailerUrl', trailerUrl)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleJapanese', titleJapanese)
          ..add('titleSynonyms', titleSynonyms)
          ..add('type', type)
          ..add('source', source)
          ..add('episodes', episodes)
          ..add('status', status)
          ..add('airing', airing)
          ..add('aired', aired)
          ..add('duration', duration)
          ..add('rating', rating)
          ..add('score', score)
          ..add('scoredBy', scoredBy)
          ..add('rank', rank)
          ..add('popularity', popularity)
          ..add('members', members)
          ..add('favorites', favorites)
          ..add('synopsis', synopsis)
          ..add('background', background)
          ..add('season', season)
          ..add('year', year)
          ..add('broadcast', broadcast)
          ..add('producers', producers)
          ..add('licensors', licensors)
          ..add('studios', studios)
          ..add('genres', genres)
          ..add('explicitGenres', explicitGenres)
          ..add('themes', themes)
          ..add('demographics', demographics)
          ..add('relations', relations)
          ..add('openingThemes', openingThemes)
          ..add('endingThemes', endingThemes))
        .toString();
  }
}

class AnimeBuilder implements Builder<Anime, AnimeBuilder> {
  _$Anime? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _trailerUrl;
  String? get trailerUrl => _$this._trailerUrl;
  set trailerUrl(String? trailerUrl) => _$this._trailerUrl = trailerUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleEnglish;
  String? get titleEnglish => _$this._titleEnglish;
  set titleEnglish(String? titleEnglish) => _$this._titleEnglish = titleEnglish;

  String? _titleJapanese;
  String? get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String? titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  ListBuilder<String>? _titleSynonyms;
  ListBuilder<String> get titleSynonyms =>
      _$this._titleSynonyms ??= new ListBuilder<String>();
  set titleSynonyms(ListBuilder<String>? titleSynonyms) =>
      _$this._titleSynonyms = titleSynonyms;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _airing;
  bool? get airing => _$this._airing;
  set airing(bool? airing) => _$this._airing = airing;

  AiredBuilder? _aired;
  AiredBuilder get aired => _$this._aired ??= new AiredBuilder();
  set aired(AiredBuilder? aired) => _$this._aired = aired;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _scoredBy;
  int? get scoredBy => _$this._scoredBy;
  set scoredBy(int? scoredBy) => _$this._scoredBy = scoredBy;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  int? _members;
  int? get members => _$this._members;
  set members(int? members) => _$this._members = members;

  int? _favorites;
  int? get favorites => _$this._favorites;
  set favorites(int? favorites) => _$this._favorites = favorites;

  String? _synopsis;
  String? get synopsis => _$this._synopsis;
  set synopsis(String? synopsis) => _$this._synopsis = synopsis;

  String? _background;
  String? get background => _$this._background;
  set background(String? background) => _$this._background = background;

  String? _season;
  String? get season => _$this._season;
  set season(String? season) => _$this._season = season;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _broadcast;
  String? get broadcast => _$this._broadcast;
  set broadcast(String? broadcast) => _$this._broadcast = broadcast;

  ListBuilder<GenericInfo>? _producers;
  ListBuilder<GenericInfo> get producers =>
      _$this._producers ??= new ListBuilder<GenericInfo>();
  set producers(ListBuilder<GenericInfo>? producers) =>
      _$this._producers = producers;

  ListBuilder<GenericInfo>? _licensors;
  ListBuilder<GenericInfo> get licensors =>
      _$this._licensors ??= new ListBuilder<GenericInfo>();
  set licensors(ListBuilder<GenericInfo>? licensors) =>
      _$this._licensors = licensors;

  ListBuilder<GenericInfo>? _studios;
  ListBuilder<GenericInfo> get studios =>
      _$this._studios ??= new ListBuilder<GenericInfo>();
  set studios(ListBuilder<GenericInfo>? studios) => _$this._studios = studios;

  ListBuilder<GenericInfo>? _genres;
  ListBuilder<GenericInfo> get genres =>
      _$this._genres ??= new ListBuilder<GenericInfo>();
  set genres(ListBuilder<GenericInfo>? genres) => _$this._genres = genres;

  ListBuilder<GenericInfo>? _explicitGenres;
  ListBuilder<GenericInfo> get explicitGenres =>
      _$this._explicitGenres ??= new ListBuilder<GenericInfo>();
  set explicitGenres(ListBuilder<GenericInfo>? explicitGenres) =>
      _$this._explicitGenres = explicitGenres;

  ListBuilder<GenericInfo>? _themes;
  ListBuilder<GenericInfo> get themes =>
      _$this._themes ??= new ListBuilder<GenericInfo>();
  set themes(ListBuilder<GenericInfo>? themes) => _$this._themes = themes;

  ListBuilder<GenericInfo>? _demographics;
  ListBuilder<GenericInfo> get demographics =>
      _$this._demographics ??= new ListBuilder<GenericInfo>();
  set demographics(ListBuilder<GenericInfo>? demographics) =>
      _$this._demographics = demographics;

  ListBuilder<Related>? _relations;
  ListBuilder<Related> get relations =>
      _$this._relations ??= new ListBuilder<Related>();
  set relations(ListBuilder<Related>? relations) =>
      _$this._relations = relations;

  ListBuilder<String>? _openingThemes;
  ListBuilder<String> get openingThemes =>
      _$this._openingThemes ??= new ListBuilder<String>();
  set openingThemes(ListBuilder<String>? openingThemes) =>
      _$this._openingThemes = openingThemes;

  ListBuilder<String>? _endingThemes;
  ListBuilder<String> get endingThemes =>
      _$this._endingThemes ??= new ListBuilder<String>();
  set endingThemes(ListBuilder<String>? endingThemes) =>
      _$this._endingThemes = endingThemes;

  AnimeBuilder();

  AnimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _trailerUrl = $v.trailerUrl;
      _title = $v.title;
      _titleEnglish = $v.titleEnglish;
      _titleJapanese = $v.titleJapanese;
      _titleSynonyms = $v.titleSynonyms.toBuilder();
      _type = $v.type;
      _source = $v.source;
      _episodes = $v.episodes;
      _status = $v.status;
      _airing = $v.airing;
      _aired = $v.aired.toBuilder();
      _duration = $v.duration;
      _rating = $v.rating;
      _score = $v.score;
      _scoredBy = $v.scoredBy;
      _rank = $v.rank;
      _popularity = $v.popularity;
      _members = $v.members;
      _favorites = $v.favorites;
      _synopsis = $v.synopsis;
      _background = $v.background;
      _season = $v.season;
      _year = $v.year;
      _broadcast = $v.broadcast;
      _producers = $v.producers.toBuilder();
      _licensors = $v.licensors.toBuilder();
      _studios = $v.studios.toBuilder();
      _genres = $v.genres.toBuilder();
      _explicitGenres = $v.explicitGenres.toBuilder();
      _themes = $v.themes.toBuilder();
      _demographics = $v.demographics.toBuilder();
      _relations = $v.relations?.toBuilder();
      _openingThemes = $v.openingThemes?.toBuilder();
      _endingThemes = $v.endingThemes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Anime;
  }

  @override
  void update(void Function(AnimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Anime build() {
    _$Anime _$result;
    try {
      _$result = _$v ??
          new _$Anime._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, 'Anime', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Anime', 'url'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, 'Anime', 'imageUrl'),
              trailerUrl: trailerUrl,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'Anime', 'title'),
              titleEnglish: titleEnglish,
              titleJapanese: titleJapanese,
              titleSynonyms: titleSynonyms.build(),
              type: type,
              source: source,
              episodes: episodes,
              status: status,
              airing: BuiltValueNullFieldError.checkNotNull(
                  airing, 'Anime', 'airing'),
              aired: aired.build(),
              duration: duration,
              rating: rating,
              score: score,
              scoredBy: scoredBy,
              rank: rank,
              popularity: popularity,
              members: members,
              favorites: favorites,
              synopsis: synopsis,
              background: background,
              season: season,
              year: year,
              broadcast: broadcast,
              producers: producers.build(),
              licensors: licensors.build(),
              studios: studios.build(),
              genres: genres.build(),
              explicitGenres: explicitGenres.build(),
              themes: themes.build(),
              demographics: demographics.build(),
              relations: _relations?.build(),
              openingThemes: _openingThemes?.build(),
              endingThemes: _endingThemes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleSynonyms';
        titleSynonyms.build();

        _$failedField = 'aired';
        aired.build();

        _$failedField = 'producers';
        producers.build();
        _$failedField = 'licensors';
        licensors.build();
        _$failedField = 'studios';
        studios.build();
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'explicitGenres';
        explicitGenres.build();
        _$failedField = 'themes';
        themes.build();
        _$failedField = 'demographics';
        demographics.build();
        _$failedField = 'relations';
        _relations?.build();
        _$failedField = 'openingThemes';
        _openingThemes?.build();
        _$failedField = 'endingThemes';
        _endingThemes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Anime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
