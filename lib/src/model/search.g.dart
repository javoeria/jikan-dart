// GENERATED CODE - DO NOT MODIFY BY HAND

part of search;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Search> _$searchSerializer = new _$SearchSerializer();

class _$SearchSerializer implements StructuredSerializer<Search> {
  @override
  final Iterable<Type> types = const [Search, _$Search];
  @override
  final String wireName = 'Search';

  @override
  Iterable<Object> serialize(Serializers serializers, Search object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.synopsis != null) {
      result
        ..add('synopsis')
        ..add(serializers.serialize(object.synopsis,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
            specifiedType: const FullType(int)));
    }
    if (object.chapters != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(object.chapters,
            specifiedType: const FullType(int)));
    }
    if (object.volumes != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(object.volumes,
            specifiedType: const FullType(int)));
    }
    if (object.startDate != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(String)));
    }
    if (object.endDate != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(String)));
    }
    if (object.members != null) {
      result
        ..add('members')
        ..add(serializers.serialize(object.members,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(double)));
    }
    if (object.rated != null) {
      result
        ..add('rated')
        ..add(serializers.serialize(object.rated,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.airing != null) {
      result
        ..add('airing')
        ..add(serializers.serialize(object.airing,
            specifiedType: const FullType(bool)));
    }
    if (object.publishing != null) {
      result
        ..add('publishing')
        ..add(serializers.serialize(object.publishing,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Search deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
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
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rated':
          result.rated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'airing':
          result.airing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'publishing':
          result.publishing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Search extends Search {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String synopsis;
  @override
  final String type;
  @override
  final int episodes;
  @override
  final int chapters;
  @override
  final int volumes;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int members;
  @override
  final double score;
  @override
  final String rated;
  @override
  final String name;
  @override
  final bool airing;
  @override
  final bool publishing;

  factory _$Search([void Function(SearchBuilder) updates]) =>
      (new SearchBuilder()..update(updates)).build();

  _$Search._(
      {this.malId,
      this.url,
      this.imageUrl,
      this.title,
      this.synopsis,
      this.type,
      this.episodes,
      this.chapters,
      this.volumes,
      this.startDate,
      this.endDate,
      this.members,
      this.score,
      this.rated,
      this.name,
      this.airing,
      this.publishing})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Search', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Search', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Search', 'imageUrl');
    }
  }

  @override
  Search rebuild(void Function(SearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBuilder toBuilder() => new SearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Search &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title &&
        synopsis == other.synopsis &&
        type == other.type &&
        episodes == other.episodes &&
        chapters == other.chapters &&
        volumes == other.volumes &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        members == other.members &&
        score == other.score &&
        rated == other.rated &&
        name == other.name &&
        airing == other.airing &&
        publishing == other.publishing;
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
                                                                    url
                                                                        .hashCode),
                                                                imageUrl
                                                                    .hashCode),
                                                            title.hashCode),
                                                        synopsis.hashCode),
                                                    type.hashCode),
                                                episodes.hashCode),
                                            chapters.hashCode),
                                        volumes.hashCode),
                                    startDate.hashCode),
                                endDate.hashCode),
                            members.hashCode),
                        score.hashCode),
                    rated.hashCode),
                name.hashCode),
            airing.hashCode),
        publishing.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Search')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('synopsis', synopsis)
          ..add('type', type)
          ..add('episodes', episodes)
          ..add('chapters', chapters)
          ..add('volumes', volumes)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('members', members)
          ..add('score', score)
          ..add('rated', rated)
          ..add('name', name)
          ..add('airing', airing)
          ..add('publishing', publishing))
        .toString();
  }
}

class SearchBuilder implements Builder<Search, SearchBuilder> {
  _$Search _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _synopsis;
  String get synopsis => _$this._synopsis;
  set synopsis(String synopsis) => _$this._synopsis = synopsis;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _episodes;
  int get episodes => _$this._episodes;
  set episodes(int episodes) => _$this._episodes = episodes;

  int _chapters;
  int get chapters => _$this._chapters;
  set chapters(int chapters) => _$this._chapters = chapters;

  int _volumes;
  int get volumes => _$this._volumes;
  set volumes(int volumes) => _$this._volumes = volumes;

  String _startDate;
  String get startDate => _$this._startDate;
  set startDate(String startDate) => _$this._startDate = startDate;

  String _endDate;
  String get endDate => _$this._endDate;
  set endDate(String endDate) => _$this._endDate = endDate;

  int _members;
  int get members => _$this._members;
  set members(int members) => _$this._members = members;

  double _score;
  double get score => _$this._score;
  set score(double score) => _$this._score = score;

  String _rated;
  String get rated => _$this._rated;
  set rated(String rated) => _$this._rated = rated;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _airing;
  bool get airing => _$this._airing;
  set airing(bool airing) => _$this._airing = airing;

  bool _publishing;
  bool get publishing => _$this._publishing;
  set publishing(bool publishing) => _$this._publishing = publishing;

  SearchBuilder();

  SearchBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _title = _$v.title;
      _synopsis = _$v.synopsis;
      _type = _$v.type;
      _episodes = _$v.episodes;
      _chapters = _$v.chapters;
      _volumes = _$v.volumes;
      _startDate = _$v.startDate;
      _endDate = _$v.endDate;
      _members = _$v.members;
      _score = _$v.score;
      _rated = _$v.rated;
      _name = _$v.name;
      _airing = _$v.airing;
      _publishing = _$v.publishing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Search other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Search;
  }

  @override
  void update(void Function(SearchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Search build() {
    final _$result = _$v ??
        new _$Search._(
            malId: malId,
            url: url,
            imageUrl: imageUrl,
            title: title,
            synopsis: synopsis,
            type: type,
            episodes: episodes,
            chapters: chapters,
            volumes: volumes,
            startDate: startDate,
            endDate: endDate,
            members: members,
            score: score,
            rated: rated,
            name: name,
            airing: airing,
            publishing: publishing);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
