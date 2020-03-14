// GENERATED CODE - DO NOT MODIFY BY HAND

part of producer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Producer> _$producerSerializer = new _$ProducerSerializer();

class _$ProducerSerializer implements StructuredSerializer<Producer> {
  @override
  final Iterable<Type> types = const [Producer, _$Producer];
  @override
  final String wireName = 'Producer';

  @override
  Iterable<Object> serialize(Serializers serializers, Producer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'meta',
      serializers.serialize(object.meta, specifiedType: const FullType(Meta)),
      'anime',
      serializers.serialize(object.anime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AnimeItem)])),
    ];

    return result;
  }

  @override
  Producer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProducerBuilder();

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
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Producer extends Producer {
  @override
  final Meta meta;
  @override
  final BuiltList<AnimeItem> anime;

  factory _$Producer([void Function(ProducerBuilder) updates]) =>
      (new ProducerBuilder()..update(updates)).build();

  _$Producer._({this.meta, this.anime}) : super._() {
    if (meta == null) {
      throw new BuiltValueNullFieldError('Producer', 'meta');
    }
    if (anime == null) {
      throw new BuiltValueNullFieldError('Producer', 'anime');
    }
  }

  @override
  Producer rebuild(void Function(ProducerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProducerBuilder toBuilder() => new ProducerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Producer && meta == other.meta && anime == other.anime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, meta.hashCode), anime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Producer')
          ..add('meta', meta)
          ..add('anime', anime))
        .toString();
  }
}

class ProducerBuilder implements Builder<Producer, ProducerBuilder> {
  _$Producer _$v;

  MetaBuilder _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder meta) => _$this._meta = meta;

  ListBuilder<AnimeItem> _anime;
  ListBuilder<AnimeItem> get anime =>
      _$this._anime ??= new ListBuilder<AnimeItem>();
  set anime(ListBuilder<AnimeItem> anime) => _$this._anime = anime;

  ProducerBuilder();

  ProducerBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _anime = _$v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Producer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Producer;
  }

  @override
  void update(void Function(ProducerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Producer build() {
    _$Producer _$result;
    try {
      _$result =
          _$v ?? new _$Producer._(meta: meta.build(), anime: anime.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
        _$failedField = 'anime';
        anime.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Producer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
