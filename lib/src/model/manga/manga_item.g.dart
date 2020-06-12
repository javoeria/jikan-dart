// GENERATED CODE - DO NOT MODIFY BY HAND

part of manga_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MangaItem> _$mangaItemSerializer = new _$MangaItemSerializer();

class _$MangaItemSerializer implements StructuredSerializer<MangaItem> {
  @override
  final Iterable<Type> types = const [MangaItem, _$MangaItem];
  @override
  final String wireName = 'MangaItem';

  @override
  Iterable<Object> serialize(Serializers serializers, MangaItem object,
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
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'members',
      serializers.serialize(object.members, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
      'authors',
      serializers.serialize(object.authors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenericInfo)])),
    ];
    if (object.synopsis != null) {
      result
        ..add('synopsis')
        ..add(serializers.serialize(object.synopsis,
            specifiedType: const FullType(String)));
    }
    if (object.publishingStart != null) {
      result
        ..add('publishing_start')
        ..add(serializers.serialize(object.publishingStart,
            specifiedType: const FullType(String)));
    }
    if (object.volumes != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(object.volumes,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(double)));
    }
    if (object.serialization != null) {
      result
        ..add('serialization')
        ..add(serializers.serialize(object.serialization,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  MangaItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MangaItemBuilder();

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
        case 'publishing_start':
          result.publishingStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'serialization':
          result.serialization.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MangaItem extends MangaItem {
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
  final String publishingStart;
  @override
  final int volumes;
  @override
  final int members;
  @override
  final BuiltList<GenericInfo> genres;
  @override
  final BuiltList<GenericInfo> authors;
  @override
  final double score;
  @override
  final BuiltList<String> serialization;

  factory _$MangaItem([void Function(MangaItemBuilder) updates]) =>
      (new MangaItemBuilder()..update(updates)).build();

  _$MangaItem._(
      {this.malId,
      this.url,
      this.title,
      this.imageUrl,
      this.synopsis,
      this.type,
      this.publishingStart,
      this.volumes,
      this.members,
      this.genres,
      this.authors,
      this.score,
      this.serialization})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'title');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'imageUrl');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'type');
    }
    if (members == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'members');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'genres');
    }
    if (authors == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'authors');
    }
  }

  @override
  MangaItem rebuild(void Function(MangaItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaItemBuilder toBuilder() => new MangaItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MangaItem &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        synopsis == other.synopsis &&
        type == other.type &&
        publishingStart == other.publishingStart &&
        volumes == other.volumes &&
        members == other.members &&
        genres == other.genres &&
        authors == other.authors &&
        score == other.score &&
        serialization == other.serialization;
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
                                                $jc($jc(0, malId.hashCode),
                                                    url.hashCode),
                                                title.hashCode),
                                            imageUrl.hashCode),
                                        synopsis.hashCode),
                                    type.hashCode),
                                publishingStart.hashCode),
                            volumes.hashCode),
                        members.hashCode),
                    genres.hashCode),
                authors.hashCode),
            score.hashCode),
        serialization.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MangaItem')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('synopsis', synopsis)
          ..add('type', type)
          ..add('publishingStart', publishingStart)
          ..add('volumes', volumes)
          ..add('members', members)
          ..add('genres', genres)
          ..add('authors', authors)
          ..add('score', score)
          ..add('serialization', serialization))
        .toString();
  }
}

class MangaItemBuilder implements Builder<MangaItem, MangaItemBuilder> {
  _$MangaItem _$v;

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

  String _publishingStart;
  String get publishingStart => _$this._publishingStart;
  set publishingStart(String publishingStart) =>
      _$this._publishingStart = publishingStart;

  int _volumes;
  int get volumes => _$this._volumes;
  set volumes(int volumes) => _$this._volumes = volumes;

  int _members;
  int get members => _$this._members;
  set members(int members) => _$this._members = members;

  ListBuilder<GenericInfo> _genres;
  ListBuilder<GenericInfo> get genres =>
      _$this._genres ??= new ListBuilder<GenericInfo>();
  set genres(ListBuilder<GenericInfo> genres) => _$this._genres = genres;

  ListBuilder<GenericInfo> _authors;
  ListBuilder<GenericInfo> get authors =>
      _$this._authors ??= new ListBuilder<GenericInfo>();
  set authors(ListBuilder<GenericInfo> authors) => _$this._authors = authors;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  ListBuilder<String> _serialization;
  ListBuilder<String> get serialization =>
      _$this._serialization ??= new ListBuilder<String>();
  set serialization(ListBuilder<String> serialization) =>
      _$this._serialization = serialization;

  MangaItemBuilder();

  MangaItemBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _title = _$v.title;
      _imageUrl = _$v.imageUrl;
      _synopsis = _$v.synopsis;
      _type = _$v.type;
      _publishingStart = _$v.publishingStart;
      _volumes = _$v.volumes;
      _members = _$v.members;
      _genres = _$v.genres?.toBuilder();
      _authors = _$v.authors?.toBuilder();
      _score = _$v.score;
      _serialization = _$v.serialization?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MangaItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MangaItem;
  }

  @override
  void update(void Function(MangaItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MangaItem build() {
    _$MangaItem _$result;
    try {
      _$result = _$v ??
          new _$MangaItem._(
              malId: malId,
              url: url,
              title: title,
              imageUrl: imageUrl,
              synopsis: synopsis,
              type: type,
              publishingStart: publishingStart,
              volumes: volumes,
              members: members,
              genres: genres.build(),
              authors: authors.build(),
              score: score,
              serialization: _serialization?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'serialization';
        _serialization?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MangaItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
