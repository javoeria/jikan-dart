// GENERATED CODE - DO NOT MODIFY BY HAND

part of staff;

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

Serializer<Staff> _$staffSerializer = new _$StaffSerializer();

class _$StaffSerializer implements StructuredSerializer<Staff> {
  @override
  final Iterable<Type> types = const [Staff, _$Staff];
  @override
  final String wireName = 'Staff';

  @override
  Iterable serialize(Serializers serializers, Staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'positions',
      serializers.serialize(object.positions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Staff deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StaffBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'positions':
          result.positions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Staff extends Staff {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final BuiltList<String> positions;

  factory _$Staff([void updates(StaffBuilder b)]) =>
      (new StaffBuilder()..update(updates)).build();

  _$Staff._({this.malId, this.url, this.imageUrl, this.name, this.positions})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Staff', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Staff', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Staff', 'imageUrl');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Staff', 'name');
    }
    if (positions == null) {
      throw new BuiltValueNullFieldError('Staff', 'positions');
    }
  }

  @override
  Staff rebuild(void updates(StaffBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffBuilder toBuilder() => new StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Staff &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        positions == other.positions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode),
            name.hashCode),
        positions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Staff')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('positions', positions))
        .toString();
  }
}

class StaffBuilder implements Builder<Staff, StaffBuilder> {
  _$Staff _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _positions;
  ListBuilder<String> get positions =>
      _$this._positions ??= new ListBuilder<String>();
  set positions(ListBuilder<String> positions) => _$this._positions = positions;

  StaffBuilder();

  StaffBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _name = _$v.name;
      _positions = _$v.positions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Staff other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Staff;
  }

  @override
  void update(void updates(StaffBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Staff build() {
    _$Staff _$result;
    try {
      _$result = _$v ??
          new _$Staff._(
              malId: malId,
              url: url,
              imageUrl: imageUrl,
              name: name,
              positions: positions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'positions';
        positions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
