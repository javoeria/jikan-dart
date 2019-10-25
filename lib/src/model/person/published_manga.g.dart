// GENERATED CODE - DO NOT MODIFY BY HAND

part of published_manga;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PublishedManga> _$publishedMangaSerializer =
    new _$PublishedMangaSerializer();

class _$PublishedMangaSerializer
    implements StructuredSerializer<PublishedManga> {
  @override
  final Iterable<Type> types = const [PublishedManga, _$PublishedManga];
  @override
  final String wireName = 'PublishedManga';

  @override
  Iterable<Object> serialize(Serializers serializers, PublishedManga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'position',
      serializers.serialize(object.position,
          specifiedType: const FullType(String)),
      'manga',
      serializers.serialize(object.manga,
          specifiedType: const FullType(GenericInfo)),
    ];

    return result;
  }

  @override
  PublishedManga deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PublishedMangaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
              specifiedType: const FullType(GenericInfo)) as GenericInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$PublishedManga extends PublishedManga {
  @override
  final String position;
  @override
  final GenericInfo manga;

  factory _$PublishedManga([void Function(PublishedMangaBuilder) updates]) =>
      (new PublishedMangaBuilder()..update(updates)).build();

  _$PublishedManga._({this.position, this.manga}) : super._() {
    if (position == null) {
      throw new BuiltValueNullFieldError('PublishedManga', 'position');
    }
    if (manga == null) {
      throw new BuiltValueNullFieldError('PublishedManga', 'manga');
    }
  }

  @override
  PublishedManga rebuild(void Function(PublishedMangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublishedMangaBuilder toBuilder() =>
      new PublishedMangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublishedManga &&
        position == other.position &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, position.hashCode), manga.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PublishedManga')
          ..add('position', position)
          ..add('manga', manga))
        .toString();
  }
}

class PublishedMangaBuilder
    implements Builder<PublishedManga, PublishedMangaBuilder> {
  _$PublishedManga _$v;

  String _position;
  String get position => _$this._position;
  set position(String position) => _$this._position = position;

  GenericInfoBuilder _manga;
  GenericInfoBuilder get manga => _$this._manga ??= new GenericInfoBuilder();
  set manga(GenericInfoBuilder manga) => _$this._manga = manga;

  PublishedMangaBuilder();

  PublishedMangaBuilder get _$this {
    if (_$v != null) {
      _position = _$v.position;
      _manga = _$v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublishedManga other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PublishedManga;
  }

  @override
  void update(void Function(PublishedMangaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PublishedManga build() {
    _$PublishedManga _$result;
    try {
      _$result = _$v ??
          new _$PublishedManga._(position: position, manga: manga.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'manga';
        manga.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PublishedManga', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
