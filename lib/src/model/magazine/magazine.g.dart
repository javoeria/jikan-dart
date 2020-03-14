// GENERATED CODE - DO NOT MODIFY BY HAND

part of magazine;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Magazine> _$magazineSerializer = new _$MagazineSerializer();

class _$MagazineSerializer implements StructuredSerializer<Magazine> {
  @override
  final Iterable<Type> types = const [Magazine, _$Magazine];
  @override
  final String wireName = 'Magazine';

  @override
  Iterable<Object> serialize(Serializers serializers, Magazine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'meta',
      serializers.serialize(object.meta, specifiedType: const FullType(Meta)),
      'manga',
      serializers.serialize(object.manga,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MangaItem)])),
    ];

    return result;
  }

  @override
  Magazine deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MagazineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta)) as Meta);
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

class _$Magazine extends Magazine {
  @override
  final Meta meta;
  @override
  final BuiltList<MangaItem> manga;

  factory _$Magazine([void Function(MagazineBuilder) updates]) =>
      (new MagazineBuilder()..update(updates)).build();

  _$Magazine._({this.meta, this.manga}) : super._() {
    if (meta == null) {
      throw new BuiltValueNullFieldError('Magazine', 'meta');
    }
    if (manga == null) {
      throw new BuiltValueNullFieldError('Magazine', 'manga');
    }
  }

  @override
  Magazine rebuild(void Function(MagazineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MagazineBuilder toBuilder() => new MagazineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Magazine && meta == other.meta && manga == other.manga;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, meta.hashCode), manga.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Magazine')
          ..add('meta', meta)
          ..add('manga', manga))
        .toString();
  }
}

class MagazineBuilder implements Builder<Magazine, MagazineBuilder> {
  _$Magazine _$v;

  MetaBuilder _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder meta) => _$this._meta = meta;

  ListBuilder<MangaItem> _manga;
  ListBuilder<MangaItem> get manga =>
      _$this._manga ??= new ListBuilder<MangaItem>();
  set manga(ListBuilder<MangaItem> manga) => _$this._manga = manga;

  MagazineBuilder();

  MagazineBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _manga = _$v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Magazine other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Magazine;
  }

  @override
  void update(void Function(MagazineBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Magazine build() {
    _$Magazine _$result;
    try {
      _$result =
          _$v ?? new _$Magazine._(meta: meta.build(), manga: manga.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
        _$failedField = 'manga';
        manga.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Magazine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
