// GENERATED CODE - DO NOT MODIFY BY HAND

part of meta_dto;

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

Serializer<MetaDto> _$metaDtoSerializer = new _$MetaDtoSerializer();

class _$MetaDtoSerializer implements StructuredSerializer<MetaDto> {
  @override
  final Iterable<Type> types = const [MetaDto, _$MetaDto];
  @override
  final String wireName = 'MetaDto';

  @override
  Iterable serialize(Serializers serializers, MetaDto object,
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
  MetaDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetaDtoBuilder();

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

class _$MetaDto extends MetaDto {
  @override
  final int malId;
  @override
  final String type;
  @override
  final String name;
  @override
  final String url;

  factory _$MetaDto([void updates(MetaDtoBuilder b)]) =>
      (new MetaDtoBuilder()..update(updates)).build();

  _$MetaDto._({this.malId, this.type, this.name, this.url}) : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('MetaDto', 'malId');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('MetaDto', 'type');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MetaDto', 'name');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('MetaDto', 'url');
    }
  }

  @override
  MetaDto rebuild(void updates(MetaDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaDtoBuilder toBuilder() => new MetaDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetaDto &&
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
    return (newBuiltValueToStringHelper('MetaDto')
          ..add('malId', malId)
          ..add('type', type)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class MetaDtoBuilder implements Builder<MetaDto, MetaDtoBuilder> {
  _$MetaDto _$v;

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

  MetaDtoBuilder();

  MetaDtoBuilder get _$this {
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
  void replace(MetaDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MetaDto;
  }

  @override
  void update(void updates(MetaDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MetaDto build() {
    final _$result =
        _$v ?? new _$MetaDto._(malId: malId, type: type, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}
