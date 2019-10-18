// GENERATED CODE - DO NOT MODIFY BY HAND

part of mal_url_;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MalUrl> _$malUrlSerializer = new _$MalUrlSerializer();

class _$MalUrlSerializer implements StructuredSerializer<MalUrl> {
  @override
  final Iterable<Type> types = const [MalUrl, _$MalUrl];
  @override
  final String wireName = 'MalUrl';

  @override
  Iterable<Object> serialize(Serializers serializers, MalUrl object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MalUrl deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MalUrlBuilder();

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

class _$MalUrl extends MalUrl {
  @override
  final int malId;
  @override
  final String type;
  @override
  final String name;
  @override
  final String url;

  factory _$MalUrl([void Function(MalUrlBuilder) updates]) =>
      (new MalUrlBuilder()..update(updates)).build();

  _$MalUrl._({this.malId, this.type, this.name, this.url}) : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('MalUrl', 'malId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('MalUrl', 'type');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MalUrl', 'name');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('MalUrl', 'url');
    }
  }

  @override
  MalUrl rebuild(void Function(MalUrlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalUrlBuilder toBuilder() => new MalUrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalUrl &&
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
    return (newBuiltValueToStringHelper('MalUrl')
          ..add('malId', malId)
          ..add('type', type)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class MalUrlBuilder implements Builder<MalUrl, MalUrlBuilder> {
  _$MalUrl _$v;

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

  MalUrlBuilder();

  MalUrlBuilder get _$this {
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
  void replace(MalUrl other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MalUrl;
  }

  @override
  void update(void Function(MalUrlBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MalUrl build() {
    final _$result =
        _$v ?? new _$MalUrl._(malId: malId, type: type, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
