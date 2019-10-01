// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<AnimeInfo> _$animeInfoSerializer = new _$AnimeInfoSerializer();

class _$AnimeInfoSerializer implements StructuredSerializer<AnimeInfo> {
  @override
  final Iterable<Type> types = const [AnimeInfo, _$AnimeInfo];
  @override
  final String wireName = 'AnimeInfo';

  @override
  Iterable serialize(Serializers serializers, AnimeInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'trailer_url',
      serializers.serialize(object.trailer_url,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'title_english',
      serializers.serialize(object.titleEnglish,
          specifiedType: const FullType(String)),
      'title_japanese',
      serializers.serialize(object.titleJapanese,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(String)),
      'airing',
      serializers.serialize(object.airing, specifiedType: const FullType(bool)),
      'aired',
      serializers.serialize(object.aired, specifiedType: const FullType(Aired)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(String)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(double)),
      'scored_by',
      serializers.serialize(object.scoredBy,
          specifiedType: const FullType(int)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(int)),
      'members',
      serializers.serialize(object.members, specifiedType: const FullType(int)),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(int)),
      'synopsis',
      serializers.serialize(object.synopsis,
          specifiedType: const FullType(String)),
      'background',
      serializers.serialize(object.background,
          specifiedType: const FullType(String)),
      'premiered',
      serializers.serialize(object.premiered,
          specifiedType: const FullType(String)),
      'broadcast',
      serializers.serialize(object.broadcast,
          specifiedType: const FullType(String)),
      'related',
      serializers.serialize(object.related,
          specifiedType: const FullType(Related)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
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
      'opening_themes',
      serializers.serialize(object.openingThemes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'ending_themes',
      serializers.serialize(object.endingThemes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  AnimeInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
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
          result.trailer_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_english':
          result.titleEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'airing':
          result.airing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'aired':
          result.aired.replace(serializers.deserialize(value,
              specifiedType: const FullType(Aired)) as Aired);
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'scored_by':
          result.scoredBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'synopsis':
          result.synopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'premiered':
          result.premiered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'broadcast':
          result.broadcast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'related':
          result.related.replace(serializers.deserialize(value,
              specifiedType: const FullType(Related)) as Related);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList);
          break;
        case 'producers':
          result.producers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList);
          break;
        case 'licensors':
          result.licensors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList);
          break;
        case 'opening_themes':
          result.openingThemes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'ending_themes':
          result.endingThemes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeInfo extends AnimeInfo {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String trailer_url;
  @override
  final String title;
  @override
  final String titleEnglish;
  @override
  final String titleJapanese;
  @override
  final String status;
  @override
  final String type;
  @override
  final String source;
  @override
  final int episodes;
  @override
  final bool airing;
  @override
  final Aired aired;
  @override
  final String duration;
  @override
  final String rating;
  @override
  final int rank;
  @override
  final double score;
  @override
  final int scoredBy;
  @override
  final int popularity;
  @override
  final int members;
  @override
  final int favorites;
  @override
  final String synopsis;
  @override
  final String background;
  @override
  final String premiered;
  @override
  final String broadcast;
  @override
  final Related related;
  @override
  final BuiltList<GenericInfo> genres;
  @override
  final BuiltList<GenericInfo> producers;
  @override
  final BuiltList<GenericInfo> licensors;
  @override
  final BuiltList<GenericInfo> studios;
  @override
  final BuiltList<String> openingThemes;
  @override
  final BuiltList<String> endingThemes;

  factory _$AnimeInfo([void updates(AnimeInfoBuilder b)]) =>
      (new AnimeInfoBuilder()..update(updates)).build();

  _$AnimeInfo._(
      {this.malId,
      this.url,
      this.imageUrl,
      this.trailer_url,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.status,
      this.type,
      this.source,
      this.episodes,
      this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.rank,
      this.score,
      this.scoredBy,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.premiered,
      this.broadcast,
      this.related,
      this.genres,
      this.producers,
      this.licensors,
      this.studios,
      this.openingThemes,
      this.endingThemes})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'imageUrl');
    }
    if (trailer_url == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'trailer_url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'title');
    }
    if (titleEnglish == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'titleEnglish');
    }
    if (titleJapanese == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'titleJapanese');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'status');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'type');
    }
    if (source == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'source');
    }
    if (airing == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'airing');
    }
    if (aired == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'aired');
    }
    if (duration == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'duration');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'rating');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'rank');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'score');
    }
    if (scoredBy == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'scoredBy');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'popularity');
    }
    if (members == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'members');
    }
    if (favorites == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'favorites');
    }
    if (synopsis == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'synopsis');
    }
    if (background == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'background');
    }
    if (premiered == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'premiered');
    }
    if (broadcast == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'broadcast');
    }
    if (related == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'related');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'genres');
    }
    if (producers == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'producers');
    }
    if (licensors == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'licensors');
    }
    if (studios == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'studios');
    }
    if (openingThemes == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'openingThemes');
    }
    if (endingThemes == null) {
      throw new BuiltValueNullFieldError('AnimeInfo', 'endingThemes');
    }
  }

  @override
  AnimeInfo rebuild(void updates(AnimeInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeInfoBuilder toBuilder() => new AnimeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeInfo &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        trailer_url == other.trailer_url &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleJapanese == other.titleJapanese &&
        status == other.status &&
        type == other.type &&
        source == other.source &&
        episodes == other.episodes &&
        airing == other.airing &&
        aired == other.aired &&
        duration == other.duration &&
        rating == other.rating &&
        rank == other.rank &&
        score == other.score &&
        scoredBy == other.scoredBy &&
        popularity == other.popularity &&
        members == other.members &&
        favorites == other.favorites &&
        synopsis == other.synopsis &&
        background == other.background &&
        premiered == other.premiered &&
        broadcast == other.broadcast &&
        related == other.related &&
        genres == other.genres &&
        producers == other.producers &&
        licensors == other.licensors &&
        studios == other.studios &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode), trailer_url.hashCode), title.hashCode), titleEnglish.hashCode), titleJapanese.hashCode), status.hashCode), type.hashCode), source.hashCode), episodes.hashCode), airing.hashCode), aired.hashCode),
                                                                                duration.hashCode),
                                                                            rating.hashCode),
                                                                        rank.hashCode),
                                                                    score.hashCode),
                                                                scoredBy.hashCode),
                                                            popularity.hashCode),
                                                        members.hashCode),
                                                    favorites.hashCode),
                                                synopsis.hashCode),
                                            background.hashCode),
                                        premiered.hashCode),
                                    broadcast.hashCode),
                                related.hashCode),
                            genres.hashCode),
                        producers.hashCode),
                    licensors.hashCode),
                studios.hashCode),
            openingThemes.hashCode),
        endingThemes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeInfo')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('trailer_url', trailer_url)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleJapanese', titleJapanese)
          ..add('status', status)
          ..add('type', type)
          ..add('source', source)
          ..add('episodes', episodes)
          ..add('airing', airing)
          ..add('aired', aired)
          ..add('duration', duration)
          ..add('rating', rating)
          ..add('rank', rank)
          ..add('score', score)
          ..add('scoredBy', scoredBy)
          ..add('popularity', popularity)
          ..add('members', members)
          ..add('favorites', favorites)
          ..add('synopsis', synopsis)
          ..add('background', background)
          ..add('premiered', premiered)
          ..add('broadcast', broadcast)
          ..add('related', related)
          ..add('genres', genres)
          ..add('producers', producers)
          ..add('licensors', licensors)
          ..add('studios', studios)
          ..add('openingThemes', openingThemes)
          ..add('endingThemes', endingThemes))
        .toString();
  }
}

class AnimeInfoBuilder implements Builder<AnimeInfo, AnimeInfoBuilder> {
  _$AnimeInfo _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _trailer_url;
  String get trailer_url => _$this._trailer_url;
  set trailer_url(String trailer_url) => _$this._trailer_url = trailer_url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _titleEnglish;
  String get titleEnglish => _$this._titleEnglish;
  set titleEnglish(String titleEnglish) => _$this._titleEnglish = titleEnglish;

  String _titleJapanese;
  String get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  int _episodes;
  int get episodes => _$this._episodes;
  set episodes(int episodes) => _$this._episodes = episodes;

  bool _airing;
  bool get airing => _$this._airing;
  set airing(bool airing) => _$this._airing = airing;

  AiredBuilder _aired;
  AiredBuilder get aired => _$this._aired ??= new AiredBuilder();
  set aired(AiredBuilder aired) => _$this._aired = aired;

  String _duration;
  String get duration => _$this._duration;
  set duration(String duration) => _$this._duration = duration;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  int _scoredBy;
  int get scoredBy => _$this._scoredBy;
  set scoredBy(int scoredBy) => _$this._scoredBy = scoredBy;

  int _popularity;
  int get popularity => _$this._popularity;
  set popularity(int popularity) => _$this._popularity = popularity;

  int _members;
  int get members => _$this._members;
  set members(int members) => _$this._members = members;

  int _favorites;
  int get favorites => _$this._favorites;
  set favorites(int favorites) => _$this._favorites = favorites;

  String _synopsis;
  String get synopsis => _$this._synopsis;
  set synopsis(String synopsis) => _$this._synopsis = synopsis;

  String _background;
  String get background => _$this._background;
  set background(String background) => _$this._background = background;

  String _premiered;
  String get premiered => _$this._premiered;
  set premiered(String premiered) => _$this._premiered = premiered;

  String _broadcast;
  String get broadcast => _$this._broadcast;
  set broadcast(String broadcast) => _$this._broadcast = broadcast;

  RelatedBuilder _related;
  RelatedBuilder get related => _$this._related ??= new RelatedBuilder();
  set related(RelatedBuilder related) => _$this._related = related;

  ListBuilder<GenericInfo> _genres;
  ListBuilder<GenericInfo> get genres =>
      _$this._genres ??= new ListBuilder<GenericInfo>();
  set genres(ListBuilder<GenericInfo> genres) => _$this._genres = genres;

  ListBuilder<GenericInfo> _producers;
  ListBuilder<GenericInfo> get producers =>
      _$this._producers ??= new ListBuilder<GenericInfo>();
  set producers(ListBuilder<GenericInfo> producers) =>
      _$this._producers = producers;

  ListBuilder<GenericInfo> _licensors;
  ListBuilder<GenericInfo> get licensors =>
      _$this._licensors ??= new ListBuilder<GenericInfo>();
  set licensors(ListBuilder<GenericInfo> licensors) =>
      _$this._licensors = licensors;

  ListBuilder<GenericInfo> _studios;
  ListBuilder<GenericInfo> get studios =>
      _$this._studios ??= new ListBuilder<GenericInfo>();
  set studios(ListBuilder<GenericInfo> studios) => _$this._studios = studios;

  ListBuilder<String> _openingThemes;
  ListBuilder<String> get openingThemes =>
      _$this._openingThemes ??= new ListBuilder<String>();
  set openingThemes(ListBuilder<String> openingThemes) =>
      _$this._openingThemes = openingThemes;

  ListBuilder<String> _endingThemes;
  ListBuilder<String> get endingThemes =>
      _$this._endingThemes ??= new ListBuilder<String>();
  set endingThemes(ListBuilder<String> endingThemes) =>
      _$this._endingThemes = endingThemes;

  AnimeInfoBuilder();

  AnimeInfoBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _trailer_url = _$v.trailer_url;
      _title = _$v.title;
      _titleEnglish = _$v.titleEnglish;
      _titleJapanese = _$v.titleJapanese;
      _status = _$v.status;
      _type = _$v.type;
      _source = _$v.source;
      _episodes = _$v.episodes;
      _airing = _$v.airing;
      _aired = _$v.aired?.toBuilder();
      _duration = _$v.duration;
      _rating = _$v.rating;
      _rank = _$v.rank;
      _score = _$v.score;
      _scoredBy = _$v.scoredBy;
      _popularity = _$v.popularity;
      _members = _$v.members;
      _favorites = _$v.favorites;
      _synopsis = _$v.synopsis;
      _background = _$v.background;
      _premiered = _$v.premiered;
      _broadcast = _$v.broadcast;
      _related = _$v.related?.toBuilder();
      _genres = _$v.genres?.toBuilder();
      _producers = _$v.producers?.toBuilder();
      _licensors = _$v.licensors?.toBuilder();
      _studios = _$v.studios?.toBuilder();
      _openingThemes = _$v.openingThemes?.toBuilder();
      _endingThemes = _$v.endingThemes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeInfo;
  }

  @override
  void update(void updates(AnimeInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeInfo build() {
    _$AnimeInfo _$result;
    try {
      _$result = _$v ??
          new _$AnimeInfo._(
              malId: malId,
              url: url,
              imageUrl: imageUrl,
              trailer_url: trailer_url,
              title: title,
              titleEnglish: titleEnglish,
              titleJapanese: titleJapanese,
              status: status,
              type: type,
              source: source,
              episodes: episodes,
              airing: airing,
              aired: aired.build(),
              duration: duration,
              rating: rating,
              rank: rank,
              score: score,
              scoredBy: scoredBy,
              popularity: popularity,
              members: members,
              favorites: favorites,
              synopsis: synopsis,
              background: background,
              premiered: premiered,
              broadcast: broadcast,
              related: related.build(),
              genres: genres.build(),
              producers: producers.build(),
              licensors: licensors.build(),
              studios: studios.build(),
              openingThemes: openingThemes.build(),
              endingThemes: endingThemes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'aired';
        aired.build();

        _$failedField = 'related';
        related.build();
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'producers';
        producers.build();
        _$failedField = 'licensors';
        licensors.build();
        _$failedField = 'studios';
        studios.build();
        _$failedField = 'openingThemes';
        openingThemes.build();
        _$failedField = 'endingThemes';
        endingThemes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnimeInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
