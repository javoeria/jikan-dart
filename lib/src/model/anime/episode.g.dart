// GENERATED CODE - DO NOT MODIFY BY HAND

part of episode;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Episode> _$episodeSerializer = new _$EpisodeSerializer();

class _$EpisodeSerializer implements StructuredSerializer<Episode> {
  @override
  final Iterable<Type> types = const [Episode, _$Episode];
  @override
  final String wireName = 'Episode';

  @override
  Iterable<Object?> serialize(Serializers serializers, Episode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'filler',
      serializers.serialize(object.filler, specifiedType: const FullType(bool)),
      'recap',
      serializers.serialize(object.recap, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.titleJapanese;
    if (value != null) {
      result
        ..add('title_japanese')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleRomanji;
    if (value != null) {
      result
        ..add('title_romanji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aired;
    if (value != null) {
      result
        ..add('aired')
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
    value = object.forumUrl;
    if (value != null) {
      result
        ..add('forum_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Episode deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpisodeBuilder();

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
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_romanji':
          result.titleRomanji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aired':
          result.aired = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'filler':
          result.filler = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'recap':
          result.recap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'forum_url':
          result.forumUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Episode extends Episode {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String title;
  @override
  final String? titleJapanese;
  @override
  final String? titleRomanji;
  @override
  final String? aired;
  @override
  final double? score;
  @override
  final bool filler;
  @override
  final bool recap;
  @override
  final String? forumUrl;

  factory _$Episode([void Function(EpisodeBuilder)? updates]) =>
      (new EpisodeBuilder()..update(updates)).build();

  _$Episode._(
      {required this.malId,
      required this.url,
      required this.title,
      this.titleJapanese,
      this.titleRomanji,
      this.aired,
      this.score,
      required this.filler,
      required this.recap,
      this.forumUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Episode', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Episode', 'url');
    BuiltValueNullFieldError.checkNotNull(title, 'Episode', 'title');
    BuiltValueNullFieldError.checkNotNull(filler, 'Episode', 'filler');
    BuiltValueNullFieldError.checkNotNull(recap, 'Episode', 'recap');
  }

  @override
  Episode rebuild(void Function(EpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeBuilder toBuilder() => new EpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Episode &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        titleJapanese == other.titleJapanese &&
        titleRomanji == other.titleRomanji &&
        aired == other.aired &&
        score == other.score &&
        filler == other.filler &&
        recap == other.recap &&
        forumUrl == other.forumUrl;
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
                                $jc($jc($jc(0, malId.hashCode), url.hashCode),
                                    title.hashCode),
                                titleJapanese.hashCode),
                            titleRomanji.hashCode),
                        aired.hashCode),
                    score.hashCode),
                filler.hashCode),
            recap.hashCode),
        forumUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Episode')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('titleJapanese', titleJapanese)
          ..add('titleRomanji', titleRomanji)
          ..add('aired', aired)
          ..add('score', score)
          ..add('filler', filler)
          ..add('recap', recap)
          ..add('forumUrl', forumUrl))
        .toString();
  }
}

class EpisodeBuilder implements Builder<Episode, EpisodeBuilder> {
  _$Episode? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleJapanese;
  String? get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String? titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  String? _titleRomanji;
  String? get titleRomanji => _$this._titleRomanji;
  set titleRomanji(String? titleRomanji) => _$this._titleRomanji = titleRomanji;

  String? _aired;
  String? get aired => _$this._aired;
  set aired(String? aired) => _$this._aired = aired;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  bool? _filler;
  bool? get filler => _$this._filler;
  set filler(bool? filler) => _$this._filler = filler;

  bool? _recap;
  bool? get recap => _$this._recap;
  set recap(bool? recap) => _$this._recap = recap;

  String? _forumUrl;
  String? get forumUrl => _$this._forumUrl;
  set forumUrl(String? forumUrl) => _$this._forumUrl = forumUrl;

  EpisodeBuilder();

  EpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _title = $v.title;
      _titleJapanese = $v.titleJapanese;
      _titleRomanji = $v.titleRomanji;
      _aired = $v.aired;
      _score = $v.score;
      _filler = $v.filler;
      _recap = $v.recap;
      _forumUrl = $v.forumUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Episode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Episode;
  }

  @override
  void update(void Function(EpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Episode build() {
    final _$result = _$v ??
        new _$Episode._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, 'Episode', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(url, 'Episode', 'url'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Episode', 'title'),
            titleJapanese: titleJapanese,
            titleRomanji: titleRomanji,
            aired: aired,
            score: score,
            filler: BuiltValueNullFieldError.checkNotNull(
                filler, 'Episode', 'filler'),
            recap: BuiltValueNullFieldError.checkNotNull(
                recap, 'Episode', 'recap'),
            forumUrl: forumUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
