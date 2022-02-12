// GENERATED CODE - DO NOT MODIFY BY HAND

part of manga;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Manga> _$mangaSerializer = new _$MangaSerializer();

class _$MangaSerializer implements StructuredSerializer<Manga> {
  @override
  final Iterable<Type> types = const [Manga, _$Manga];
  @override
  final String wireName = 'Manga';

  @override
  Iterable<Object?> serialize(Serializers serializers, Manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'title_synonyms',
      serializers.serialize(object.titleSynonyms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'publishing',
      serializers.serialize(object.publishing,
          specifiedType: const FullType(bool)),
      'published',
      serializers.serialize(object.published,
          specifiedType: const FullType(Aired)),
      'related',
      serializers.serialize(object.related,
          specifiedType: const FullType(Related)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'explicit_genres',
      serializers.serialize(object.explicitGenres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'demographics',
      serializers.serialize(object.demographics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'themes',
      serializers.serialize(object.themes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'authors',
      serializers.serialize(object.authors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'serializations',
      serializers.serialize(object.serializations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
    ];
    Object? value;
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
    value = object.volumes;
    if (value != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rank;
    if (value != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  Manga deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MangaBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_english':
          result.titleEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_synonyms':
          result.titleSynonyms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'publishing':
          result.publishing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'published':
          result.published.replace(serializers.deserialize(value,
              specifiedType: const FullType(Aired))! as Aired);
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'scored_by':
          result.scoredBy = serializers.deserialize(value,
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
        case 'related':
          result.related.replace(serializers.deserialize(value,
              specifiedType: const FullType(Related))! as Related);
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
        case 'demographics':
          result.demographics.replace(serializers.deserialize(value,
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
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
        case 'serializations':
          result.serializations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Manga extends Manga {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String title;
  @override
  final String? titleEnglish;
  @override
  final BuiltList<String> titleSynonyms;
  @override
  final String? titleJapanese;
  @override
  final String status;
  @override
  final String imageUrl;
  @override
  final String? type;
  @override
  final int? volumes;
  @override
  final int? chapters;
  @override
  final bool publishing;
  @override
  final Aired published;
  @override
  final int? rank;
  @override
  final double? score;
  @override
  final int? scoredBy;
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
  final Related related;
  @override
  final BuiltList<GenericInfo> genres;
  @override
  final BuiltList<GenericInfo> explicitGenres;
  @override
  final BuiltList<GenericInfo> demographics;
  @override
  final BuiltList<GenericInfo> themes;
  @override
  final BuiltList<GenericInfo> authors;
  @override
  final BuiltList<GenericInfo> serializations;

  factory _$Manga([void Function(MangaBuilder)? updates]) =>
      (new MangaBuilder()..update(updates)).build();

  _$Manga._(
      {required this.malId,
      required this.url,
      required this.title,
      this.titleEnglish,
      required this.titleSynonyms,
      this.titleJapanese,
      required this.status,
      required this.imageUrl,
      this.type,
      this.volumes,
      this.chapters,
      required this.publishing,
      required this.published,
      this.rank,
      this.score,
      this.scoredBy,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      required this.related,
      required this.genres,
      required this.explicitGenres,
      required this.demographics,
      required this.themes,
      required this.authors,
      required this.serializations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Manga', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Manga', 'url');
    BuiltValueNullFieldError.checkNotNull(title, 'Manga', 'title');
    BuiltValueNullFieldError.checkNotNull(
        titleSynonyms, 'Manga', 'titleSynonyms');
    BuiltValueNullFieldError.checkNotNull(status, 'Manga', 'status');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Manga', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(publishing, 'Manga', 'publishing');
    BuiltValueNullFieldError.checkNotNull(published, 'Manga', 'published');
    BuiltValueNullFieldError.checkNotNull(related, 'Manga', 'related');
    BuiltValueNullFieldError.checkNotNull(genres, 'Manga', 'genres');
    BuiltValueNullFieldError.checkNotNull(
        explicitGenres, 'Manga', 'explicitGenres');
    BuiltValueNullFieldError.checkNotNull(
        demographics, 'Manga', 'demographics');
    BuiltValueNullFieldError.checkNotNull(themes, 'Manga', 'themes');
    BuiltValueNullFieldError.checkNotNull(authors, 'Manga', 'authors');
    BuiltValueNullFieldError.checkNotNull(
        serializations, 'Manga', 'serializations');
  }

  @override
  Manga rebuild(void Function(MangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaBuilder toBuilder() => new MangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Manga &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleSynonyms == other.titleSynonyms &&
        titleJapanese == other.titleJapanese &&
        status == other.status &&
        imageUrl == other.imageUrl &&
        type == other.type &&
        volumes == other.volumes &&
        chapters == other.chapters &&
        publishing == other.publishing &&
        published == other.published &&
        rank == other.rank &&
        score == other.score &&
        scoredBy == other.scoredBy &&
        popularity == other.popularity &&
        members == other.members &&
        favorites == other.favorites &&
        synopsis == other.synopsis &&
        background == other.background &&
        related == other.related &&
        genres == other.genres &&
        explicitGenres == other.explicitGenres &&
        demographics == other.demographics &&
        themes == other.themes &&
        authors == other.authors &&
        serializations == other.serializations;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, malId.hashCode), url.hashCode), title.hashCode), titleEnglish.hashCode), titleSynonyms.hashCode), titleJapanese.hashCode), status.hashCode), imageUrl.hashCode), type.hashCode),
                                                                                volumes.hashCode),
                                                                            chapters.hashCode),
                                                                        publishing.hashCode),
                                                                    published.hashCode),
                                                                rank.hashCode),
                                                            score.hashCode),
                                                        scoredBy.hashCode),
                                                    popularity.hashCode),
                                                members.hashCode),
                                            favorites.hashCode),
                                        synopsis.hashCode),
                                    background.hashCode),
                                related.hashCode),
                            genres.hashCode),
                        explicitGenres.hashCode),
                    demographics.hashCode),
                themes.hashCode),
            authors.hashCode),
        serializations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Manga')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleSynonyms', titleSynonyms)
          ..add('titleJapanese', titleJapanese)
          ..add('status', status)
          ..add('imageUrl', imageUrl)
          ..add('type', type)
          ..add('volumes', volumes)
          ..add('chapters', chapters)
          ..add('publishing', publishing)
          ..add('published', published)
          ..add('rank', rank)
          ..add('score', score)
          ..add('scoredBy', scoredBy)
          ..add('popularity', popularity)
          ..add('members', members)
          ..add('favorites', favorites)
          ..add('synopsis', synopsis)
          ..add('background', background)
          ..add('related', related)
          ..add('genres', genres)
          ..add('explicitGenres', explicitGenres)
          ..add('demographics', demographics)
          ..add('themes', themes)
          ..add('authors', authors)
          ..add('serializations', serializations))
        .toString();
  }
}

class MangaBuilder implements Builder<Manga, MangaBuilder> {
  _$Manga? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleEnglish;
  String? get titleEnglish => _$this._titleEnglish;
  set titleEnglish(String? titleEnglish) => _$this._titleEnglish = titleEnglish;

  ListBuilder<String>? _titleSynonyms;
  ListBuilder<String> get titleSynonyms =>
      _$this._titleSynonyms ??= new ListBuilder<String>();
  set titleSynonyms(ListBuilder<String>? titleSynonyms) =>
      _$this._titleSynonyms = titleSynonyms;

  String? _titleJapanese;
  String? get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String? titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _volumes;
  int? get volumes => _$this._volumes;
  set volumes(int? volumes) => _$this._volumes = volumes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  bool? _publishing;
  bool? get publishing => _$this._publishing;
  set publishing(bool? publishing) => _$this._publishing = publishing;

  AiredBuilder? _published;
  AiredBuilder get published => _$this._published ??= new AiredBuilder();
  set published(AiredBuilder? published) => _$this._published = published;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _scoredBy;
  int? get scoredBy => _$this._scoredBy;
  set scoredBy(int? scoredBy) => _$this._scoredBy = scoredBy;

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

  RelatedBuilder? _related;
  RelatedBuilder get related => _$this._related ??= new RelatedBuilder();
  set related(RelatedBuilder? related) => _$this._related = related;

  ListBuilder<GenericInfo>? _genres;
  ListBuilder<GenericInfo> get genres =>
      _$this._genres ??= new ListBuilder<GenericInfo>();
  set genres(ListBuilder<GenericInfo>? genres) => _$this._genres = genres;

  ListBuilder<GenericInfo>? _explicitGenres;
  ListBuilder<GenericInfo> get explicitGenres =>
      _$this._explicitGenres ??= new ListBuilder<GenericInfo>();
  set explicitGenres(ListBuilder<GenericInfo>? explicitGenres) =>
      _$this._explicitGenres = explicitGenres;

  ListBuilder<GenericInfo>? _demographics;
  ListBuilder<GenericInfo> get demographics =>
      _$this._demographics ??= new ListBuilder<GenericInfo>();
  set demographics(ListBuilder<GenericInfo>? demographics) =>
      _$this._demographics = demographics;

  ListBuilder<GenericInfo>? _themes;
  ListBuilder<GenericInfo> get themes =>
      _$this._themes ??= new ListBuilder<GenericInfo>();
  set themes(ListBuilder<GenericInfo>? themes) => _$this._themes = themes;

  ListBuilder<GenericInfo>? _authors;
  ListBuilder<GenericInfo> get authors =>
      _$this._authors ??= new ListBuilder<GenericInfo>();
  set authors(ListBuilder<GenericInfo>? authors) => _$this._authors = authors;

  ListBuilder<GenericInfo>? _serializations;
  ListBuilder<GenericInfo> get serializations =>
      _$this._serializations ??= new ListBuilder<GenericInfo>();
  set serializations(ListBuilder<GenericInfo>? serializations) =>
      _$this._serializations = serializations;

  MangaBuilder();

  MangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _title = $v.title;
      _titleEnglish = $v.titleEnglish;
      _titleSynonyms = $v.titleSynonyms.toBuilder();
      _titleJapanese = $v.titleJapanese;
      _status = $v.status;
      _imageUrl = $v.imageUrl;
      _type = $v.type;
      _volumes = $v.volumes;
      _chapters = $v.chapters;
      _publishing = $v.publishing;
      _published = $v.published.toBuilder();
      _rank = $v.rank;
      _score = $v.score;
      _scoredBy = $v.scoredBy;
      _popularity = $v.popularity;
      _members = $v.members;
      _favorites = $v.favorites;
      _synopsis = $v.synopsis;
      _background = $v.background;
      _related = $v.related.toBuilder();
      _genres = $v.genres.toBuilder();
      _explicitGenres = $v.explicitGenres.toBuilder();
      _demographics = $v.demographics.toBuilder();
      _themes = $v.themes.toBuilder();
      _authors = $v.authors.toBuilder();
      _serializations = $v.serializations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Manga;
  }

  @override
  void update(void Function(MangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Manga build() {
    _$Manga _$result;
    try {
      _$result = _$v ??
          new _$Manga._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, 'Manga', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Manga', 'url'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'Manga', 'title'),
              titleEnglish: titleEnglish,
              titleSynonyms: titleSynonyms.build(),
              titleJapanese: titleJapanese,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'Manga', 'status'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, 'Manga', 'imageUrl'),
              type: type,
              volumes: volumes,
              chapters: chapters,
              publishing: BuiltValueNullFieldError.checkNotNull(
                  publishing, 'Manga', 'publishing'),
              published: published.build(),
              rank: rank,
              score: score,
              scoredBy: scoredBy,
              popularity: popularity,
              members: members,
              favorites: favorites,
              synopsis: synopsis,
              background: background,
              related: related.build(),
              genres: genres.build(),
              explicitGenres: explicitGenres.build(),
              demographics: demographics.build(),
              themes: themes.build(),
              authors: authors.build(),
              serializations: serializations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleSynonyms';
        titleSynonyms.build();

        _$failedField = 'published';
        published.build();

        _$failedField = 'related';
        related.build();
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'explicitGenres';
        explicitGenres.build();
        _$failedField = 'demographics';
        demographics.build();
        _$failedField = 'themes';
        themes.build();
        _$failedField = 'authors';
        authors.build();
        _$failedField = 'serializations';
        serializations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Manga', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
