// GENERATED CODE - DO NOT MODIFY BY HAND

part of producer;

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

Serializer<Producer> _$producerSerializer = new _$ProducerSerializer();

class _$ProducerSerializer implements StructuredSerializer<Producer> {
  @override
  final Iterable<Type> types = const [Producer, _$Producer];
  @override
  final String wireName = 'Producer';

  @override
  Iterable serialize(Serializers serializers, Producer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
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
  Producer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProducerBuilder();

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

class _$Producer extends Producer {
  @override
  final int malId;
  @override
  final String type;
  @override
  final String name;
  @override
  final String url;

  factory _$Producer([void updates(ProducerBuilder b)]) =>
      (new ProducerBuilder()..update(updates)).build();

  _$Producer._({this.malId, this.type, this.name, this.url}) : super._();

  @override
  Producer rebuild(void updates(ProducerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProducerBuilder toBuilder() => new ProducerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Producer &&
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
    return (newBuiltValueToStringHelper('Producer')
          ..add('malId', malId)
          ..add('type', type)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class ProducerBuilder implements Builder<Producer, ProducerBuilder> {
  _$Producer _$v;

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

  ProducerBuilder();

  ProducerBuilder get _$this {
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
  void replace(Producer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Producer;
  }

  @override
  void update(void updates(ProducerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Producer build() {
    final _$result =
        _$v ?? new _$Producer._(malId: malId, type: type, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}
