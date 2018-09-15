// GENERATED CODE - DO NOT MODIFY BY HAND

part of genre_list_dto;

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

Serializer<GenreListDto> _$genreListDtoSerializer =
    new _$GenreListDtoSerializer();

class _$GenreListDtoSerializer implements StructuredSerializer<GenreListDto> {
  @override
  final Iterable<Type> types = const [GenreListDto, _$GenreListDto];
  @override
  final String wireName = 'GenreListDto';

  @override
  Iterable serialize(Serializers serializers, GenreListDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_url',
      serializers.serialize(object.malUrl,
          specifiedType: const FullType(MalUrlDto)),
      'item_count',
      serializers.serialize(object.itemCount,
          specifiedType: const FullType(int)),
    ];
    if (object.anime != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(object.anime,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.manga != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(object.manga,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }

    return result;
  }

  @override
  GenreListDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreListDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_url':
          result.malUrl.replace(serializers.deserialize(value,
              specifiedType: const FullType(MalUrlDto)) as MalUrlDto);
          break;
        case 'item_count':
          result.itemCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreListDto extends GenreListDto {
  @override
  final MalUrlDto malUrl;
  @override
  final int itemCount;
  @override
  final BuiltList<AnimeDto> anime;
  @override
  final BuiltList<AnimeDto> manga;

  factory _$GenreListDto([void updates(GenreListDtoBuilder b)]) =>
      (new GenreListDtoBuilder()..update(updates)).build();

  _$GenreListDto._({this.malUrl, this.itemCount, this.anime, this.manga})
      : super._() {
    if (malUrl == null) {
      throw new BuiltValueNullFieldError('GenreListDto', 'malUrl');
    }
    if (itemCount == null) {
      throw new BuiltValueNullFieldError('GenreListDto', 'itemCount');
    }
  }

  @override
  GenreListDto rebuild(void updates(GenreListDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreListDtoBuilder toBuilder() => new GenreListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreListDto &&
        malUrl == other.malUrl &&
        itemCount == other.itemCount &&
        anime == other.anime &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, malUrl.hashCode), itemCount.hashCode), anime.hashCode),
        manga.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreListDto')
          ..add('malUrl', malUrl)
          ..add('itemCount', itemCount)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GenreListDtoBuilder
    implements Builder<GenreListDto, GenreListDtoBuilder> {
  _$GenreListDto _$v;

  MalUrlDtoBuilder _malUrl;
  MalUrlDtoBuilder get malUrl => _$this._malUrl ??= new MalUrlDtoBuilder();
  set malUrl(MalUrlDtoBuilder malUrl) => _$this._malUrl = malUrl;

  int _itemCount;
  int get itemCount => _$this._itemCount;
  set itemCount(int itemCount) => _$this._itemCount = itemCount;

  ListBuilder<AnimeDto> _anime;
  ListBuilder<AnimeDto> get anime =>
      _$this._anime ??= new ListBuilder<AnimeDto>();
  set anime(ListBuilder<AnimeDto> anime) => _$this._anime = anime;

  ListBuilder<AnimeDto> _manga;
  ListBuilder<AnimeDto> get manga =>
      _$this._manga ??= new ListBuilder<AnimeDto>();
  set manga(ListBuilder<AnimeDto> manga) => _$this._manga = manga;

  GenreListDtoBuilder();

  GenreListDtoBuilder get _$this {
    if (_$v != null) {
      _malUrl = _$v.malUrl?.toBuilder();
      _itemCount = _$v.itemCount;
      _anime = _$v.anime?.toBuilder();
      _manga = _$v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreListDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreListDto;
  }

  @override
  void update(void updates(GenreListDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreListDto build() {
    _$GenreListDto _$result;
    try {
      _$result = _$v ??
          new _$GenreListDto._(
              malUrl: malUrl.build(),
              itemCount: itemCount,
              anime: _anime?.build(),
              manga: _manga?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'malUrl';
        malUrl.build();

        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
