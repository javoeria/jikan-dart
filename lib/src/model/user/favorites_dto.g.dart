// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorites_dto;

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

Serializer<FavoritesDto> _$favoritesDtoSerializer =
    new _$FavoritesDtoSerializer();

class _$FavoritesDtoSerializer implements StructuredSerializer<FavoritesDto> {
  @override
  final Iterable<Type> types = const [FavoritesDto, _$FavoritesDto];
  @override
  final String wireName = 'FavoritesDto';

  @override
  Iterable serialize(Serializers serializers, FavoritesDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anime',
      serializers.serialize(object.anime,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteItemDto)])),
      'manga',
      serializers.serialize(object.manga,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteItemDto)])),
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteItemDto)])),
      'people',
      serializers.serialize(object.people,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteItemDto)])),
    ];

    return result;
  }

  @override
  FavoritesDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoritesDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteItemDto)]))
              as BuiltList);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteItemDto)]))
              as BuiltList);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteItemDto)]))
              as BuiltList);
          break;
        case 'people':
          result.people.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteItemDto)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FavoritesDto extends FavoritesDto {
  @override
  final BuiltList<FavoriteItemDto> anime;
  @override
  final BuiltList<FavoriteItemDto> manga;
  @override
  final BuiltList<FavoriteItemDto> characters;
  @override
  final BuiltList<FavoriteItemDto> people;

  factory _$FavoritesDto([void updates(FavoritesDtoBuilder b)]) =>
      (new FavoritesDtoBuilder()..update(updates)).build();

  _$FavoritesDto._({this.anime, this.manga, this.characters, this.people})
      : super._() {
    if (anime == null) {
      throw new BuiltValueNullFieldError('FavoritesDto', 'anime');
    }
    if (manga == null) {
      throw new BuiltValueNullFieldError('FavoritesDto', 'manga');
    }
    if (characters == null) {
      throw new BuiltValueNullFieldError('FavoritesDto', 'characters');
    }
    if (people == null) {
      throw new BuiltValueNullFieldError('FavoritesDto', 'people');
    }
  }

  @override
  FavoritesDto rebuild(void updates(FavoritesDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoritesDtoBuilder toBuilder() => new FavoritesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoritesDto &&
        anime == other.anime &&
        manga == other.manga &&
        characters == other.characters &&
        people == other.people;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, anime.hashCode), manga.hashCode), characters.hashCode),
        people.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoritesDto')
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('characters', characters)
          ..add('people', people))
        .toString();
  }
}

class FavoritesDtoBuilder
    implements Builder<FavoritesDto, FavoritesDtoBuilder> {
  _$FavoritesDto _$v;

  ListBuilder<FavoriteItemDto> _anime;
  ListBuilder<FavoriteItemDto> get anime =>
      _$this._anime ??= new ListBuilder<FavoriteItemDto>();
  set anime(ListBuilder<FavoriteItemDto> anime) => _$this._anime = anime;

  ListBuilder<FavoriteItemDto> _manga;
  ListBuilder<FavoriteItemDto> get manga =>
      _$this._manga ??= new ListBuilder<FavoriteItemDto>();
  set manga(ListBuilder<FavoriteItemDto> manga) => _$this._manga = manga;

  ListBuilder<FavoriteItemDto> _characters;
  ListBuilder<FavoriteItemDto> get characters =>
      _$this._characters ??= new ListBuilder<FavoriteItemDto>();
  set characters(ListBuilder<FavoriteItemDto> characters) =>
      _$this._characters = characters;

  ListBuilder<FavoriteItemDto> _people;
  ListBuilder<FavoriteItemDto> get people =>
      _$this._people ??= new ListBuilder<FavoriteItemDto>();
  set people(ListBuilder<FavoriteItemDto> people) => _$this._people = people;

  FavoritesDtoBuilder();

  FavoritesDtoBuilder get _$this {
    if (_$v != null) {
      _anime = _$v.anime?.toBuilder();
      _manga = _$v.manga?.toBuilder();
      _characters = _$v.characters?.toBuilder();
      _people = _$v.people?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoritesDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoritesDto;
  }

  @override
  void update(void updates(FavoritesDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoritesDto build() {
    _$FavoritesDto _$result;
    try {
      _$result = _$v ??
          new _$FavoritesDto._(
              anime: anime.build(),
              manga: manga.build(),
              characters: characters.build(),
              people: people.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'anime';
        anime.build();
        _$failedField = 'manga';
        manga.build();
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'people';
        people.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoritesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
