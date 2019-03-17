// GENERATED CODE - DO NOT MODIFY BY HAND

part of top;

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

Serializer<Top> _$topSerializer = new _$TopSerializer();

class _$TopSerializer implements StructuredSerializer<Top> {
  @override
  final Iterable<Type> types = const [Top, _$Top];
  @override
  final String wireName = 'Top';

  @override
  Iterable serialize(Serializers serializers, Top object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'members',
      serializers.serialize(object.members, specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score,
          specifiedType: const FullType(double)),
    ];
    if (object.episodes != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(object.episodes,
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

    return result;
  }

  @override
  Top deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopBuilder();

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
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Top extends Top {
  @override
  final int malId;
  @override
  final int rank;
  @override
  final String title;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String type;
  @override
  final int episodes;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int members;
  @override
  final double score;

  factory _$Top([void updates(TopBuilder b)]) =>
      (new TopBuilder()..update(updates)).build();

  _$Top._(
      {this.malId,
      this.rank,
      this.title,
      this.url,
      this.imageUrl,
      this.type,
      this.episodes,
      this.startDate,
      this.endDate,
      this.members,
      this.score})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Top', 'malId');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('Top', 'rank');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Top', 'title');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Top', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Top', 'imageUrl');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Top', 'type');
    }
    if (members == null) {
      throw new BuiltValueNullFieldError('Top', 'members');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('Top', 'score');
    }
  }

  @override
  Top rebuild(void updates(TopBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TopBuilder toBuilder() => new TopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Top &&
        malId == other.malId &&
        rank == other.rank &&
        title == other.title &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        type == other.type &&
        episodes == other.episodes &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        members == other.members &&
        score == other.score;
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
                                        $jc($jc(0, malId.hashCode),
                                            rank.hashCode),
                                        title.hashCode),
                                    url.hashCode),
                                imageUrl.hashCode),
                            type.hashCode),
                        episodes.hashCode),
                    startDate.hashCode),
                endDate.hashCode),
            members.hashCode),
        score.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Top')
          ..add('malId', malId)
          ..add('rank', rank)
          ..add('title', title)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('type', type)
          ..add('episodes', episodes)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('members', members)
          ..add('score', score))
        .toString();
  }
}

class TopBuilder implements Builder<Top, TopBuilder> {
  _$Top _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  int _rank;
  int get rank => _$this._rank;
  set rank(int rank) => _$this._rank = rank;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _episodes;
  int get episodes => _$this._episodes;
  set episodes(int episodes) => _$this._episodes = episodes;

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

  TopBuilder();

  TopBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _rank = _$v.rank;
      _title = _$v.title;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _type = _$v.type;
      _episodes = _$v.episodes;
      _startDate = _$v.startDate;
      _endDate = _$v.endDate;
      _members = _$v.members;
      _score = _$v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Top other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Top;
  }

  @override
  void update(void updates(TopBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Top build() {
    final _$result = _$v ??
        new _$Top._(
            malId: malId,
            rank: rank,
            title: title,
            url: url,
            imageUrl: imageUrl,
            type: type,
            episodes: episodes,
            startDate: startDate,
            endDate: endDate,
            members: members,
            score: score);
    replace(_$result);
    return _$result;
  }
}
