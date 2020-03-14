// GENERATED CODE - DO NOT MODIFY BY HAND

part of genre_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreList> _$genreListSerializer = new _$GenreListSerializer();

class _$GenreListSerializer implements StructuredSerializer<GenreList> {
  @override
  final Iterable<Type> types = const [GenreList, _$GenreList];
  @override
  final String wireName = 'GenreList';

  @override
  Iterable<Object> serialize(Serializers serializers, GenreList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_url',
      serializers.serialize(object.malUrl,
          specifiedType: const FullType(MalUrl)),
      'item_count',
      serializers.serialize(object.itemCount,
          specifiedType: const FullType(int)),
    ];
    if (object.anime != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(object.anime,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.manga != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(object.manga,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MangaItem)])));
    }
    return result;
  }

  @override
  GenreList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_url':
          result.malUrl.replace(serializers.deserialize(value,
              specifiedType: const FullType(MalUrl)) as MalUrl);
          break;
        case 'item_count':
          result.itemCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MangaItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreList extends GenreList {
  @override
  final MalUrl malUrl;
  @override
  final int itemCount;
  @override
  final BuiltList<AnimeItem> anime;
  @override
  final BuiltList<MangaItem> manga;

  factory _$GenreList([void Function(GenreListBuilder) updates]) =>
      (new GenreListBuilder()..update(updates)).build();

  _$GenreList._({this.malUrl, this.itemCount, this.anime, this.manga})
      : super._() {
    if (malUrl == null) {
      throw new BuiltValueNullFieldError('GenreList', 'malUrl');
    }
    if (itemCount == null) {
      throw new BuiltValueNullFieldError('GenreList', 'itemCount');
    }
  }

  @override
  GenreList rebuild(void Function(GenreListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreListBuilder toBuilder() => new GenreListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreList &&
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
    return (newBuiltValueToStringHelper('GenreList')
          ..add('malUrl', malUrl)
          ..add('itemCount', itemCount)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GenreListBuilder implements Builder<GenreList, GenreListBuilder> {
  _$GenreList _$v;

  MalUrlBuilder _malUrl;
  MalUrlBuilder get malUrl => _$this._malUrl ??= new MalUrlBuilder();
  set malUrl(MalUrlBuilder malUrl) => _$this._malUrl = malUrl;

  int _itemCount;
  int get itemCount => _$this._itemCount;
  set itemCount(int itemCount) => _$this._itemCount = itemCount;

  ListBuilder<AnimeItem> _anime;
  ListBuilder<AnimeItem> get anime =>
      _$this._anime ??= new ListBuilder<AnimeItem>();
  set anime(ListBuilder<AnimeItem> anime) => _$this._anime = anime;

  ListBuilder<MangaItem> _manga;
  ListBuilder<MangaItem> get manga =>
      _$this._manga ??= new ListBuilder<MangaItem>();
  set manga(ListBuilder<MangaItem> manga) => _$this._manga = manga;

  GenreListBuilder();

  GenreListBuilder get _$this {
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
  void replace(GenreList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreList;
  }

  @override
  void update(void Function(GenreListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreList build() {
    _$GenreList _$result;
    try {
      _$result = _$v ??
          new _$GenreList._(
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
            'GenreList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
