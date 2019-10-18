// GENERATED CODE - DO NOT MODIFY BY HAND

part of producer_meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProducerMeta> _$producerMetaSerializer =
    new _$ProducerMetaSerializer();

class _$ProducerMetaSerializer implements StructuredSerializer<ProducerMeta> {
  @override
  final Iterable<Type> types = const [ProducerMeta, _$ProducerMeta];
  @override
  final String wireName = 'ProducerMeta';

  @override
  Iterable<Object> serialize(Serializers serializers, ProducerMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.malId != null) {
      result
        ..add('mal_id')
        ..add(serializers.serialize(object.malId,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProducerMeta deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProducerMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProducerMeta extends ProducerMeta {
  @override
  final int malId;
  @override
  final String type;
  @override
  final String name;
  @override
  final String url;

  factory _$ProducerMeta([void Function(ProducerMetaBuilder) updates]) =>
      (new ProducerMetaBuilder()..update(updates)).build();

  _$ProducerMeta._({this.malId, this.type, this.name, this.url}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('ProducerMeta', 'name');
    }
  }

  @override
  ProducerMeta rebuild(void Function(ProducerMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProducerMetaBuilder toBuilder() => new ProducerMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProducerMeta &&
        malId == other.malId &&
        type == other.type &&
        name == other.name &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, malId.hashCode), type.hashCode), name.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProducerMeta')
          ..add('malId', malId)
          ..add('type', type)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class ProducerMetaBuilder
    implements Builder<ProducerMeta, ProducerMetaBuilder> {
  _$ProducerMeta _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ProducerMetaBuilder();

  ProducerMetaBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _type = _$v.type;
      _name = _$v.name;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProducerMeta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProducerMeta;
  }

  @override
  void update(void Function(ProducerMetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProducerMeta build() {
    final _$result = _$v ??
        new _$ProducerMeta._(malId: malId, type: type, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
