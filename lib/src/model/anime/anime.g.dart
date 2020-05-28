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
  Iterable<Object> serialize(Serializers serializers, Anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      'related',
      serializers.serialize(object.related,
          specifiedType: const FullType(Related)),
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
      'opening_themes',
      serializers.serialize(object.openingThemes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'ending_themes',
      serializers.serialize(object.endingThemes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.trailerUrl != null) {
      result
        ..add('trailer_url')
        ..add(serializers.serialize(object.trailerUrl,
            specifiedType: const FullType(String)));
    }
    if (object.titleEnglish != null) {
      result
        ..add('title_english')
        ..add(serializers.serialize(object.titleEnglish,
            specifiedType: const FullType(String)));
    }
    if (object.titleJapanese != null) {
      result
        ..add('title_japanese')
        ..add(serializers.serialize(object.titleJapanese,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(String)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType: const FullType(int)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.duration != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(object.duration,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(String)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(double)));
    }
    if (object.scoredBy != null) {
      result
        ..add('scored_by')
        ..add(serializers.serialize(object.scoredBy,
            specifiedType: const FullType(int)));
    }
    if (object.rank != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(object.rank,
            specifiedType: const FullType(int)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(int)));
    }
    if (object.members != null) {
      result
        ..add('members')
        ..add(serializers.serialize(object.members,
            specifiedType: const FullType(int)));
    }
    if (object.favorites != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(object.favorites,
            specifiedType: const FullType(int)));
    }
    if (object.synopsis != null) {
      result
        ..add('synopsis')
        ..add(serializers.serialize(object.synopsis,
            specifiedType: const FullType(String)));
    }
    if (object.background != null) {
      result
        ..add('background')
        ..add(serializers.serialize(object.background,
            specifiedType: const FullType(String)));
    }
    if (object.premiered != null) {
      result
        ..add('premiered')
        ..add(serializers.serialize(object.premiered,
            specifiedType: const FullType(String)));
    }
    if (object.broadcast != null) {
      result
        ..add('broadcast')
        ..add(serializers.serialize(object.broadcast,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Anime deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeBuilder();

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
          result.trailerUrl = serializers.deserialize(value,
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
        case 'title_synonyms':
          result.titleSynonyms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'scored_by':
          result.scoredBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
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
        case 'producers':
          result.producers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'licensors':
          result.licensors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'opening_themes':
          result.openingThemes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'ending_themes':
          result.endingThemes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
  final String trailerUrl;
  @override
  final String title;
  @override
  final String titleEnglish;
  @override
  final String titleJapanese;
  @override
  final BuiltList<String> titleSynonyms;
  @override
  final String type;
  @override
  final String source;
  @override
  final int episodes;
  @override
  final String status;
  @override
  final bool airing;
  @override
  final Aired aired;
  @override
  final String duration;
  @override
  final String rating;
  @override
  final double score;
  @override
  final int scoredBy;
  @override
  final int rank;
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
  final BuiltList<GenericInfo> producers;
  @override
  final BuiltList<GenericInfo> licensors;
  @override
  final BuiltList<GenericInfo> studios;
  @override
  final BuiltList<GenericInfo> genres;
  @override
  final BuiltList<String> openingThemes;
  @override
  final BuiltList<String> endingThemes;

  factory _$Anime([void Function(AnimeBuilder) updates]) =>
      (new AnimeBuilder()..update(updates)).build();

  _$Anime._(
      {this.malId,
      this.url,
      this.imageUrl,
      this.trailerUrl,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.airing,
      this.aired,
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
      this.premiered,
      this.broadcast,
      this.related,
      this.producers,
      this.licensors,
      this.studios,
      this.genres,
      this.openingThemes,
      this.endingThemes})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Anime', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Anime', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Anime', 'imageUrl');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Anime', 'title');
    }
    if (titleSynonyms == null) {
      throw new BuiltValueNullFieldError('Anime', 'titleSynonyms');
    }
    if (airing == null) {
      throw new BuiltValueNullFieldError('Anime', 'airing');
    }
    if (aired == null) {
      throw new BuiltValueNullFieldError('Anime', 'aired');
    }
    if (related == null) {
      throw new BuiltValueNullFieldError('Anime', 'related');
    }
    if (producers == null) {
      throw new BuiltValueNullFieldError('Anime', 'producers');
    }
    if (licensors == null) {
      throw new BuiltValueNullFieldError('Anime', 'licensors');
    }
    if (studios == null) {
      throw new BuiltValueNullFieldError('Anime', 'studios');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('Anime', 'genres');
    }
    if (openingThemes == null) {
      throw new BuiltValueNullFieldError('Anime', 'openingThemes');
    }
    if (endingThemes == null) {
      throw new BuiltValueNullFieldError('Anime', 'endingThemes');
    }
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
        premiered == other.premiered &&
        broadcast == other.broadcast &&
        related == other.related &&
        producers == other.producers &&
        licensors == other.licensors &&
        studios == other.studios &&
        genres == other.genres &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode), trailerUrl.hashCode), title.hashCode), titleEnglish.hashCode), titleJapanese.hashCode), titleSynonyms.hashCode), type.hashCode), source.hashCode), episodes.hashCode), status.hashCode), airing.hashCode), aired.hashCode),
                                                                                duration.hashCode),
                                                                            rating.hashCode),
                                                                        score.hashCode),
                                                                    scoredBy.hashCode),
                                                                rank.hashCode),
                                                            popularity.hashCode),
                                                        members.hashCode),
                                                    favorites.hashCode),
                                                synopsis.hashCode),
                                            background.hashCode),
                                        premiered.hashCode),
                                    broadcast.hashCode),
                                related.hashCode),
                            producers.hashCode),
                        licensors.hashCode),
                    studios.hashCode),
                genres.hashCode),
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
          ..add('premiered', premiered)
          ..add('broadcast', broadcast)
          ..add('related', related)
          ..add('producers', producers)
          ..add('licensors', licensors)
          ..add('studios', studios)
          ..add('genres', genres)
          ..add('openingThemes', openingThemes)
          ..add('endingThemes', endingThemes))
        .toString();
  }
}

class AnimeBuilder implements Builder<Anime, AnimeBuilder> {
  _$Anime _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _trailerUrl;
  String get trailerUrl => _$this._trailerUrl;
  set trailerUrl(String trailerUrl) => _$this._trailerUrl = trailerUrl;

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

  ListBuilder<String> _titleSynonyms;
  ListBuilder<String> get titleSynonyms =>
      _$this._titleSynonyms ??= new ListBuilder<String>();
  set titleSynonyms(ListBuilder<String> titleSynonyms) =>
      _$this._titleSynonyms = titleSynonyms;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  int _episodes;
  int get episodes => _$this._episodes;
  set episodes(int episodes) => _$this._episodes = episodes;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

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

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  int _scoredBy;
  int get scoredBy => _$this._scoredBy;
  set scoredBy(int scoredBy) => _$this._scoredBy = scoredBy;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

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

  ListBuilder<GenericInfo> _genres;
  ListBuilder<GenericInfo> get genres =>
      _$this._genres ??= new ListBuilder<GenericInfo>();
  set genres(ListBuilder<GenericInfo> genres) => _$this._genres = genres;

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

  AnimeBuilder();

  AnimeBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _trailerUrl = _$v.trailerUrl;
      _title = _$v.title;
      _titleEnglish = _$v.titleEnglish;
      _titleJapanese = _$v.titleJapanese;
      _titleSynonyms = _$v.titleSynonyms?.toBuilder();
      _type = _$v.type;
      _source = _$v.source;
      _episodes = _$v.episodes;
      _status = _$v.status;
      _airing = _$v.airing;
      _aired = _$v.aired?.toBuilder();
      _duration = _$v.duration;
      _rating = _$v.rating;
      _score = _$v.score;
      _scoredBy = _$v.scoredBy;
      _rank = _$v.rank;
      _popularity = _$v.popularity;
      _members = _$v.members;
      _favorites = _$v.favorites;
      _synopsis = _$v.synopsis;
      _background = _$v.background;
      _premiered = _$v.premiered;
      _broadcast = _$v.broadcast;
      _related = _$v.related?.toBuilder();
      _producers = _$v.producers?.toBuilder();
      _licensors = _$v.licensors?.toBuilder();
      _studios = _$v.studios?.toBuilder();
      _genres = _$v.genres?.toBuilder();
      _openingThemes = _$v.openingThemes?.toBuilder();
      _endingThemes = _$v.endingThemes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Anime other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Anime;
  }

  @override
  void update(void Function(AnimeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Anime build() {
    _$Anime _$result;
    try {
      _$result = _$v ??
          new _$Anime._(
              malId: malId,
              url: url,
              imageUrl: imageUrl,
              trailerUrl: trailerUrl,
              title: title,
              titleEnglish: titleEnglish,
              titleJapanese: titleJapanese,
              titleSynonyms: titleSynonyms.build(),
              type: type,
              source: source,
              episodes: episodes,
              status: status,
              airing: airing,
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
              premiered: premiered,
              broadcast: broadcast,
              related: related.build(),
              producers: producers.build(),
              licensors: licensors.build(),
              studios: studios.build(),
              genres: genres.build(),
              openingThemes: openingThemes.build(),
              endingThemes: endingThemes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'titleSynonyms';
        titleSynonyms.build();

        _$failedField = 'aired';
        aired.build();

        _$failedField = 'related';
        related.build();
        _$failedField = 'producers';
        producers.build();
        _$failedField = 'licensors';
        licensors.build();
        _$failedField = 'studios';
        studios.build();
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'openingThemes';
        openingThemes.build();
        _$failedField = 'endingThemes';
        endingThemes.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
