// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_episode;

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

Serializer<AnimeEpisode> _$animeEpisodeSerializer =
    new _$AnimeEpisodeSerializer();

class _$AnimeEpisodeSerializer implements StructuredSerializer<AnimeEpisode> {
  @override
  final Iterable<Type> types = const [AnimeEpisode, _$AnimeEpisode];
  @override
  final String wireName = 'AnimeEpisode';

  @override
  Iterable serialize(Serializers serializers, AnimeEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'episode_id',
      serializers.serialize(object.episodeId,
          specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'title_japanese',
      serializers.serialize(object.titleJapanese,
          specifiedType: const FullType(String)),
      'title_romanji',
      serializers.serialize(object.titleRomanji,
          specifiedType: const FullType(String)),
      'aired',
      serializers.serialize(object.aired, specifiedType: const FullType(Aired)),
      'filler',
      serializers.serialize(object.filler, specifiedType: const FullType(bool)),
      'recap',
      serializers.serialize(object.recap, specifiedType: const FullType(bool)),
      'video_url',
      serializers.serialize(object.videoUrl,
          specifiedType: const FullType(String)),
      'forum_url',
      serializers.serialize(object.forumUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AnimeEpisode deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeEpisodeBuilder();

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
          result.aired.replace(serializers.deserialize(value,
              specifiedType: const FullType(Aired)) as Aired);
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

class _$AnimeEpisode extends AnimeEpisode {
  @override
  final int episodeId;
  @override
  final String title;
  @override
  final String titleJapanese;
  @override
  final String titleRomanji;
  @override
  final Aired aired;
  @override
  final bool filler;
  @override
  final bool recap;
  @override
  final String videoUrl;
  @override
  final String forumUrl;

  factory _$AnimeEpisode([void updates(AnimeEpisodeBuilder b)]) =>
      (new AnimeEpisodeBuilder()..update(updates)).build();

  _$AnimeEpisode._(
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
      throw new BuiltValueNullFieldError('AnimeEpisode', 'episodeId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'title');
    }
    if (titleJapanese == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'titleJapanese');
    }
    if (titleRomanji == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'titleRomanji');
    }
    if (aired == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'aired');
    }
    if (filler == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'filler');
    }
    if (recap == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'recap');
    }
    if (videoUrl == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'videoUrl');
    }
    if (forumUrl == null) {
      throw new BuiltValueNullFieldError('AnimeEpisode', 'forumUrl');
    }
  }

  @override
  AnimeEpisode rebuild(void updates(AnimeEpisodeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeEpisodeBuilder toBuilder() => new AnimeEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeEpisode &&
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
    return (newBuiltValueToStringHelper('AnimeEpisode')
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

class AnimeEpisodeBuilder
    implements Builder<AnimeEpisode, AnimeEpisodeBuilder> {
  _$AnimeEpisode _$v;

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

  AiredBuilder _aired;
  AiredBuilder get aired => _$this._aired ??= new AiredBuilder();
  set aired(AiredBuilder aired) => _$this._aired = aired;

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

  AnimeEpisodeBuilder();

  AnimeEpisodeBuilder get _$this {
    if (_$v != null) {
      _episodeId = _$v.episodeId;
      _title = _$v.title;
      _titleJapanese = _$v.titleJapanese;
      _titleRomanji = _$v.titleRomanji;
      _aired = _$v.aired?.toBuilder();
      _filler = _$v.filler;
      _recap = _$v.recap;
      _videoUrl = _$v.videoUrl;
      _forumUrl = _$v.forumUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeEpisode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeEpisode;
  }

  @override
  void update(void updates(AnimeEpisodeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeEpisode build() {
    _$AnimeEpisode _$result;
    try {
      _$result = _$v ??
          new _$AnimeEpisode._(
              episodeId: episodeId,
              title: title,
              titleJapanese: titleJapanese,
              titleRomanji: titleRomanji,
              aired: aired.build(),
              filler: filler,
              recap: recap,
              videoUrl: videoUrl,
              forumUrl: forumUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'aired';
        aired.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnimeEpisode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
