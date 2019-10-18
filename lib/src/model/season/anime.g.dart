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
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'synopsis',
      serializers.serialize(object.synopsis,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'members',
      serializers.serialize(object.members, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SeasonGenre)])),
      'producers',
      serializers.serialize(object.producers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Producer)])),
      'licensors',
      serializers.serialize(object.licensors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.airingStart != null) {
      result
        ..add('airing_start')
        ..add(serializers.serialize(object.airingStart,
            specifiedType: const FullType(String)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType: const FullType(int)));
    }
    if (object.source != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source,
            specifiedType: const FullType(String)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(double)));
    }
    if (object.r18 != null) {
      result
        ..add('r18')
        ..add(serializers.serialize(object.r18,
            specifiedType: const FullType(bool)));
    }
    if (object.kids != null) {
      result
        ..add('kids')
        ..add(serializers.serialize(object.kids,
            specifiedType: const FullType(bool)));
    }
    if (object.continuing != null) {
      result
        ..add('continuing')
        ..add(serializers.serialize(object.continuing,
            specifiedType: const FullType(bool)));
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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'synopsis':
          result.synopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'airing_start':
          result.airingStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SeasonGenre)]))
              as BuiltList<dynamic>);
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'producers':
          result.producers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Producer)]))
              as BuiltList<dynamic>);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'licensors':
          result.licensors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'r18':
          result.r18 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'kids':
          result.kids = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'continuing':
          result.continuing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
  final String title;
  @override
  final String imageUrl;
  @override
  final String synopsis;
  @override
  final String type;
  @override
  final String airingStart;
  @override
  final int episodes;
  @override
  final int members;
  @override
  final BuiltList<SeasonGenre> genres;
  @override
  final String source;
  @override
  final BuiltList<Producer> producers;
  @override
  final double score;
  @override
  final BuiltList<String> licensors;
  @override
  final bool r18;
  @override
  final bool kids;
  @override
  final bool continuing;

  factory _$Anime([void Function(AnimeBuilder) updates]) =>
      (new AnimeBuilder()..update(updates)).build();

  _$Anime._(
      {this.malId,
      this.url,
      this.title,
      this.imageUrl,
      this.synopsis,
      this.type,
      this.airingStart,
      this.episodes,
      this.members,
      this.genres,
      this.source,
      this.producers,
      this.score,
      this.licensors,
      this.r18,
      this.kids,
      this.continuing})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Anime', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Anime', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Anime', 'title');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Anime', 'imageUrl');
    }
    if (synopsis == null) {
      throw new BuiltValueNullFieldError('Anime', 'synopsis');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Anime', 'type');
    }
    if (members == null) {
      throw new BuiltValueNullFieldError('Anime', 'members');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('Anime', 'genres');
    }
    if (producers == null) {
      throw new BuiltValueNullFieldError('Anime', 'producers');
    }
    if (licensors == null) {
      throw new BuiltValueNullFieldError('Anime', 'licensors');
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
        title == other.title &&
        imageUrl == other.imageUrl &&
        synopsis == other.synopsis &&
        type == other.type &&
        airingStart == other.airingStart &&
        episodes == other.episodes &&
        members == other.members &&
        genres == other.genres &&
        source == other.source &&
        producers == other.producers &&
        score == other.score &&
        licensors == other.licensors &&
        r18 == other.r18 &&
        kids == other.kids &&
        continuing == other.continuing;
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
                                                                        0,
                                                                        malId
                                                                            .hashCode),
                                                                    url.hashCode),
                                                                title.hashCode),
                                                            imageUrl.hashCode),
                                                        synopsis.hashCode),
                                                    type.hashCode),
                                                airingStart.hashCode),
                                            episodes.hashCode),
                                        members.hashCode),
                                    genres.hashCode),
                                source.hashCode),
                            producers.hashCode),
                        score.hashCode),
                    licensors.hashCode),
                r18.hashCode),
            kids.hashCode),
        continuing.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Anime')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('synopsis', synopsis)
          ..add('type', type)
          ..add('airingStart', airingStart)
          ..add('episodes', episodes)
          ..add('members', members)
          ..add('genres', genres)
          ..add('source', source)
          ..add('producers', producers)
          ..add('score', score)
          ..add('licensors', licensors)
          ..add('r18', r18)
          ..add('kids', kids)
          ..add('continuing', continuing))
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

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _synopsis;
  String get synopsis => _$this._synopsis;
  set synopsis(String synopsis) => _$this._synopsis = synopsis;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _airingStart;
  String get airingStart => _$this._airingStart;
  set airingStart(String airingStart) => _$this._airingStart = airingStart;

  int _episodes;
  int get episodes => _$this._episodes;
  set episodes(int episodes) => _$this._episodes = episodes;

  int _members;
  int get members => _$this._members;
  set members(int members) => _$this._members = members;

  ListBuilder<SeasonGenre> _genres;
  ListBuilder<SeasonGenre> get genres =>
      _$this._genres ??= new ListBuilder<SeasonGenre>();
  set genres(ListBuilder<SeasonGenre> genres) => _$this._genres = genres;

  String _source;
  String get source => _$this._source;
  set source(String source) => _$this._source = source;

  ListBuilder<Producer> _producers;
  ListBuilder<Producer> get producers =>
      _$this._producers ??= new ListBuilder<Producer>();
  set producers(ListBuilder<Producer> producers) =>
      _$this._producers = producers;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  ListBuilder<String> _licensors;
  ListBuilder<String> get licensors =>
      _$this._licensors ??= new ListBuilder<String>();
  set licensors(ListBuilder<String> licensors) => _$this._licensors = licensors;

  bool _r18;
  bool get r18 => _$this._r18;
  set r18(bool r18) => _$this._r18 = r18;

  bool _kids;
  bool get kids => _$this._kids;
  set kids(bool kids) => _$this._kids = kids;

  bool _continuing;
  bool get continuing => _$this._continuing;
  set continuing(bool continuing) => _$this._continuing = continuing;

  AnimeBuilder();

  AnimeBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _title = _$v.title;
      _imageUrl = _$v.imageUrl;
      _synopsis = _$v.synopsis;
      _type = _$v.type;
      _airingStart = _$v.airingStart;
      _episodes = _$v.episodes;
      _members = _$v.members;
      _genres = _$v.genres?.toBuilder();
      _source = _$v.source;
      _producers = _$v.producers?.toBuilder();
      _score = _$v.score;
      _licensors = _$v.licensors?.toBuilder();
      _r18 = _$v.r18;
      _kids = _$v.kids;
      _continuing = _$v.continuing;
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
              title: title,
              imageUrl: imageUrl,
              synopsis: synopsis,
              type: type,
              airingStart: airingStart,
              episodes: episodes,
              members: members,
              genres: genres.build(),
              source: source,
              producers: producers.build(),
              score: score,
              licensors: licensors.build(),
              r18: r18,
              kids: kids,
              continuing: continuing);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();

        _$failedField = 'producers';
        producers.build();

        _$failedField = 'licensors';
        licensors.build();
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
