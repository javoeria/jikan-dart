// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_episodes;

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

Serializer<AnimeEpisodes> _$animeEpisodesSerializer =
    new _$AnimeEpisodesSerializer();

class _$AnimeEpisodesSerializer implements StructuredSerializer<AnimeEpisodes> {
  @override
  final Iterable<Type> types = const [AnimeEpisodes, _$AnimeEpisodes];
  @override
  final String wireName = 'AnimeEpisodes';

  @override
  Iterable serialize(Serializers serializers, AnimeEpisodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'episodes_last_page',
      serializers.serialize(object.episodesLastPage,
          specifiedType: const FullType(int)),
      'episodes',
      serializers.serialize(object.episodes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AnimeEpisode)])),
    ];

    return result;
  }

  @override
  AnimeEpisodes deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeEpisodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'episodes_last_page':
          result.episodesLastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeEpisode)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeEpisodes extends AnimeEpisodes {
  @override
  final int episodesLastPage;
  @override
  final BuiltList<AnimeEpisode> episodes;

  factory _$AnimeEpisodes([void updates(AnimeEpisodesBuilder b)]) =>
      (new AnimeEpisodesBuilder()..update(updates)).build();

  _$AnimeEpisodes._({this.episodesLastPage, this.episodes}) : super._() {
    if (episodesLastPage == null) {
      throw new BuiltValueNullFieldError('AnimeEpisodes', 'episodesLastPage');
    }
    if (episodes == null) {
      throw new BuiltValueNullFieldError('AnimeEpisodes', 'episodes');
    }
  }

  @override
  AnimeEpisodes rebuild(void updates(AnimeEpisodesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeEpisodesBuilder toBuilder() => new AnimeEpisodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeEpisodes &&
        episodesLastPage == other.episodesLastPage &&
        episodes == other.episodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, episodesLastPage.hashCode), episodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeEpisodes')
          ..add('episodesLastPage', episodesLastPage)
          ..add('episodes', episodes))
        .toString();
  }
}

class AnimeEpisodesBuilder
    implements Builder<AnimeEpisodes, AnimeEpisodesBuilder> {
  _$AnimeEpisodes _$v;

  int _episodesLastPage;
  int get episodesLastPage => _$this._episodesLastPage;
  set episodesLastPage(int episodesLastPage) =>
      _$this._episodesLastPage = episodesLastPage;

  ListBuilder<AnimeEpisode> _episodes;
  ListBuilder<AnimeEpisode> get episodes =>
      _$this._episodes ??= new ListBuilder<AnimeEpisode>();
  set episodes(ListBuilder<AnimeEpisode> episodes) =>
      _$this._episodes = episodes;

  AnimeEpisodesBuilder();

  AnimeEpisodesBuilder get _$this {
    if (_$v != null) {
      _episodesLastPage = _$v.episodesLastPage;
      _episodes = _$v.episodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeEpisodes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeEpisodes;
  }

  @override
  void update(void updates(AnimeEpisodesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeEpisodes build() {
    _$AnimeEpisodes _$result;
    try {
      _$result = _$v ??
          new _$AnimeEpisodes._(
              episodesLastPage: episodesLastPage, episodes: episodes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'episodes';
        episodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnimeEpisodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
