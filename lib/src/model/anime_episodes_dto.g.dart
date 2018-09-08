// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_episodes_dto;

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

Serializer<AnimeEpisodesDto> _$animeEpisodesDtoSerializer =
    new _$AnimeEpisodesDtoSerializer();

class _$AnimeEpisodesDtoSerializer
    implements StructuredSerializer<AnimeEpisodesDto> {
  @override
  final Iterable<Type> types = const [AnimeEpisodesDto, _$AnimeEpisodesDto];
  @override
  final String wireName = 'AnimeEpisodesDto';

  @override
  Iterable serialize(Serializers serializers, AnimeEpisodesDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'episodes_last_page',
      serializers.serialize(object.episodesLastPage,
          specifiedType: const FullType(int)),
      'episodes',
      serializers.serialize(object.episodes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AnimeEpisodeDto)])),
    ];

    return result;
  }

  @override
  AnimeEpisodesDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeEpisodesDtoBuilder();

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
                      BuiltList, const [const FullType(AnimeEpisodeDto)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeEpisodesDto extends AnimeEpisodesDto {
  @override
  final int episodesLastPage;
  @override
  final BuiltList<AnimeEpisodeDto> episodes;

  factory _$AnimeEpisodesDto([void updates(AnimeEpisodesDtoBuilder b)]) =>
      (new AnimeEpisodesDtoBuilder()..update(updates)).build();

  _$AnimeEpisodesDto._({this.episodesLastPage, this.episodes}) : super._() {
    if (episodesLastPage == null) {
      throw new BuiltValueNullFieldError(
          'AnimeEpisodesDto', 'episodesLastPage');
    }
    if (episodes == null) {
      throw new BuiltValueNullFieldError('AnimeEpisodesDto', 'episodes');
    }
  }

  @override
  AnimeEpisodesDto rebuild(void updates(AnimeEpisodesDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeEpisodesDtoBuilder toBuilder() =>
      new AnimeEpisodesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeEpisodesDto &&
        episodesLastPage == other.episodesLastPage &&
        episodes == other.episodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, episodesLastPage.hashCode), episodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeEpisodesDto')
          ..add('episodesLastPage', episodesLastPage)
          ..add('episodes', episodes))
        .toString();
  }
}

class AnimeEpisodesDtoBuilder
    implements Builder<AnimeEpisodesDto, AnimeEpisodesDtoBuilder> {
  _$AnimeEpisodesDto _$v;

  int _episodesLastPage;
  int get episodesLastPage => _$this._episodesLastPage;
  set episodesLastPage(int episodesLastPage) =>
      _$this._episodesLastPage = episodesLastPage;

  ListBuilder<AnimeEpisodeDto> _episodes;
  ListBuilder<AnimeEpisodeDto> get episodes =>
      _$this._episodes ??= new ListBuilder<AnimeEpisodeDto>();
  set episodes(ListBuilder<AnimeEpisodeDto> episodes) =>
      _$this._episodes = episodes;

  AnimeEpisodesDtoBuilder();

  AnimeEpisodesDtoBuilder get _$this {
    if (_$v != null) {
      _episodesLastPage = _$v.episodesLastPage;
      _episodes = _$v.episodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeEpisodesDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeEpisodesDto;
  }

  @override
  void update(void updates(AnimeEpisodesDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeEpisodesDto build() {
    _$AnimeEpisodesDto _$result;
    try {
      _$result = _$v ??
          new _$AnimeEpisodesDto._(
              episodesLastPage: episodesLastPage, episodes: episodes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'episodes';
        episodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AnimeEpisodesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
