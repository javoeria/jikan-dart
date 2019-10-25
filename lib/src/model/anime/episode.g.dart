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
  Iterable<Object> serialize(Serializers serializers, Episode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'episode_id',
      serializers.serialize(object.episodeId,
          specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'filler',
      serializers.serialize(object.filler, specifiedType: const FullType(bool)),
      'recap',
      serializers.serialize(object.recap, specifiedType: const FullType(bool)),
    ];
    if (object.titleJapanese != null) {
      result
        ..add('title_japanese')
        ..add(serializers.serialize(object.titleJapanese,
            specifiedType: const FullType(String)));
    }
    if (object.titleRomanji != null) {
      result
        ..add('title_romanji')
        ..add(serializers.serialize(object.titleRomanji,
            specifiedType: const FullType(String)));
    }
    if (object.aired != null) {
      result
        ..add('aired')
        ..add(serializers.serialize(object.aired,
            specifiedType: const FullType(String)));
    }
    if (object.videoUrl != null) {
      result
        ..add('video_url')
        ..add(serializers.serialize(object.videoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.forumUrl != null) {
      result
        ..add('forum_url')
        ..add(serializers.serialize(object.forumUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Episode deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpisodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'episode_id':
          result.episodeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_romanji':
          result.titleRomanji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aired':
          result.aired = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filler':
          result.filler = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'recap':
          result.recap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forum_url':
          result.forumUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Episode extends Episode {
  @override
  final int episodeId;
  @override
  final String title;
  @override
  final String titleJapanese;
  @override
  final String titleRomanji;
  @override
  final String aired;
  @override
  final bool filler;
  @override
  final bool recap;
  @override
  final String videoUrl;
  @override
  final String forumUrl;

  factory _$Episode([void Function(EpisodeBuilder) updates]) =>
      (new EpisodeBuilder()..update(updates)).build();

  _$Episode._(
      {this.episodeId,
      this.title,
      this.titleJapanese,
      this.titleRomanji,
      this.aired,
      this.filler,
      this.recap,
      this.videoUrl,
      this.forumUrl})
      : super._() {
    if (episodeId == null) {
      throw new BuiltValueNullFieldError('Episode', 'episodeId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Episode', 'title');
    }
    if (filler == null) {
      throw new BuiltValueNullFieldError('Episode', 'filler');
    }
    if (recap == null) {
      throw new BuiltValueNullFieldError('Episode', 'recap');
    }
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
        episodeId == other.episodeId &&
        title == other.title &&
        titleJapanese == other.titleJapanese &&
        titleRomanji == other.titleRomanji &&
        aired == other.aired &&
        filler == other.filler &&
        recap == other.recap &&
        videoUrl == other.videoUrl &&
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
                            $jc($jc($jc(0, episodeId.hashCode), title.hashCode),
                                titleJapanese.hashCode),
                            titleRomanji.hashCode),
                        aired.hashCode),
                    filler.hashCode),
                recap.hashCode),
            videoUrl.hashCode),
        forumUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Episode')
          ..add('episodeId', episodeId)
          ..add('title', title)
          ..add('titleJapanese', titleJapanese)
          ..add('titleRomanji', titleRomanji)
          ..add('aired', aired)
          ..add('filler', filler)
          ..add('recap', recap)
          ..add('videoUrl', videoUrl)
          ..add('forumUrl', forumUrl))
        .toString();
  }
}

class EpisodeBuilder implements Builder<Episode, EpisodeBuilder> {
  _$Episode _$v;

  int _episodeId;
  int get episodeId => _$this._episodeId;
  set episodeId(int episodeId) => _$this._episodeId = episodeId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _titleJapanese;
  String get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  String _titleRomanji;
  String get titleRomanji => _$this._titleRomanji;
  set titleRomanji(String titleRomanji) => _$this._titleRomanji = titleRomanji;

  String _aired;
  String get aired => _$this._aired;
  set aired(String aired) => _$this._aired = aired;

  bool _filler;
  bool get filler => _$this._filler;
  set filler(bool filler) => _$this._filler = filler;

  bool _recap;
  bool get recap => _$this._recap;
  set recap(bool recap) => _$this._recap = recap;

  String _videoUrl;
  String get videoUrl => _$this._videoUrl;
  set videoUrl(String videoUrl) => _$this._videoUrl = videoUrl;

  String _forumUrl;
  String get forumUrl => _$this._forumUrl;
  set forumUrl(String forumUrl) => _$this._forumUrl = forumUrl;

  EpisodeBuilder();

  EpisodeBuilder get _$this {
    if (_$v != null) {
      _episodeId = _$v.episodeId;
      _title = _$v.title;
      _titleJapanese = _$v.titleJapanese;
      _titleRomanji = _$v.titleRomanji;
      _aired = _$v.aired;
      _filler = _$v.filler;
      _recap = _$v.recap;
      _videoUrl = _$v.videoUrl;
      _forumUrl = _$v.forumUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Episode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Episode;
  }

  @override
  void update(void Function(EpisodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Episode build() {
    final _$result = _$v ??
        new _$Episode._(
            episodeId: episodeId,
            title: title,
            titleJapanese: titleJapanese,
            titleRomanji: titleRomanji,
            aired: aired,
            filler: filler,
            recap: recap,
            videoUrl: videoUrl,
            forumUrl: forumUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
