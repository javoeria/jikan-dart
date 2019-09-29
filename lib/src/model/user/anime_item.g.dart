// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_item;

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

Serializer<AnimeItem> _$animeItemSerializer = new _$AnimeItemSerializer();

class _$AnimeItemSerializer implements StructuredSerializer<AnimeItem> {
  @override
  final Iterable<Type> types = const [AnimeItem, _$AnimeItem];
  @override
  final String wireName = 'AnimeItem';

  @override
  Iterable serialize(Serializers serializers, AnimeItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
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
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'watched_episodes',
      serializers.serialize(object.watchedEpisodes,
          specifiedType: const FullType(int)),
      'total_episodes',
      serializers.serialize(object.totalEpisodes,
          specifiedType: const FullType(int)),
      'watching_status',
      serializers.serialize(object.watchingStatus,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  AnimeItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeItemBuilder();

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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watched_episodes':
          result.watchedEpisodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_episodes':
          result.totalEpisodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watching_status':
          result.watchingStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeItem extends AnimeItem {
  @override
  final int malId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String type;
  @override
  final int score;
  @override
  final int watchedEpisodes;
  @override
  final int totalEpisodes;
  @override
  final int watchingStatus;

  factory _$AnimeItem([void updates(AnimeItemBuilder b)]) =>
      (new AnimeItemBuilder()..update(updates)).build();

  _$AnimeItem._(
      {this.malId,
      this.title,
      this.url,
      this.imageUrl,
      this.type,
      this.score,
      this.watchedEpisodes,
      this.totalEpisodes,
      this.watchingStatus})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'malId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'title');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'imageUrl');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'type');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'score');
    }
    if (watchedEpisodes == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'watchedEpisodes');
    }
    if (totalEpisodes == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'totalEpisodes');
    }
    if (watchingStatus == null) {
      throw new BuiltValueNullFieldError('AnimeItem', 'watchingStatus');
    }
  }

  @override
  AnimeItem rebuild(void updates(AnimeItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeItemBuilder toBuilder() => new AnimeItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeItem &&
        malId == other.malId &&
        title == other.title &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        type == other.type &&
        score == other.score &&
        watchedEpisodes == other.watchedEpisodes &&
        totalEpisodes == other.totalEpisodes &&
        watchingStatus == other.watchingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, malId.hashCode), title.hashCode),
                                url.hashCode),
                            imageUrl.hashCode),
                        type.hashCode),
                    score.hashCode),
                watchedEpisodes.hashCode),
            totalEpisodes.hashCode),
        watchingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeItem')
          ..add('malId', malId)
          ..add('title', title)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('type', type)
          ..add('score', score)
          ..add('watchedEpisodes', watchedEpisodes)
          ..add('totalEpisodes', totalEpisodes)
          ..add('watchingStatus', watchingStatus))
        .toString();
  }
}

class AnimeItemBuilder implements Builder<AnimeItem, AnimeItemBuilder> {
  _$AnimeItem _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

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

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _watchedEpisodes;
  int get watchedEpisodes => _$this._watchedEpisodes;
  set watchedEpisodes(int watchedEpisodes) =>
      _$this._watchedEpisodes = watchedEpisodes;

  int _totalEpisodes;
  int get totalEpisodes => _$this._totalEpisodes;
  set totalEpisodes(int totalEpisodes) => _$this._totalEpisodes = totalEpisodes;

  int _watchingStatus;
  int get watchingStatus => _$this._watchingStatus;
  set watchingStatus(int watchingStatus) =>
      _$this._watchingStatus = watchingStatus;

  AnimeItemBuilder();

  AnimeItemBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _title = _$v.title;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _type = _$v.type;
      _score = _$v.score;
      _watchedEpisodes = _$v.watchedEpisodes;
      _totalEpisodes = _$v.totalEpisodes;
      _watchingStatus = _$v.watchingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeItem;
  }

  @override
  void update(void updates(AnimeItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeItem build() {
    final _$result = _$v ??
        new _$AnimeItem._(
            malId: malId,
            title: title,
            url: url,
            imageUrl: imageUrl,
            type: type,
            score: score,
            watchedEpisodes: watchedEpisodes,
            totalEpisodes: totalEpisodes,
            watchingStatus: watchingStatus);
    replace(_$result);
    return _$result;
  }
}
