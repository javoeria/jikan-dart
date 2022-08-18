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
  Iterable<Object?> serialize(Serializers serializers, Magazine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Magazine deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MagazineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Magazine extends Magazine {
  @override
  final int malId;
  @override
  final String name;
  @override
  final String url;
  @override
  final int count;

  factory _$Magazine([void Function(MagazineBuilder)? updates]) =>
      (new MagazineBuilder()..update(updates)).build();

  _$Magazine._(
      {required this.malId,
      required this.name,
      required this.url,
      required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Magazine', 'malId');
    BuiltValueNullFieldError.checkNotNull(name, 'Magazine', 'name');
    BuiltValueNullFieldError.checkNotNull(url, 'Magazine', 'url');
    BuiltValueNullFieldError.checkNotNull(count, 'Magazine', 'count');
  }

  @override
  Magazine rebuild(void Function(MagazineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MagazineBuilder toBuilder() => new MagazineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Magazine &&
        malId == other.malId &&
        name == other.name &&
        url == other.url &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, malId.hashCode), name.hashCode), url.hashCode),
        count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Magazine')
          ..add('malId', malId)
          ..add('name', name)
          ..add('url', url)
          ..add('count', count))
        .toString();
  }
}

class MagazineBuilder implements Builder<Magazine, MagazineBuilder> {
  _$Magazine? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  MagazineBuilder();

  MagazineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _name = $v.name;
      _url = $v.url;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Magazine other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Magazine;
  }

  @override
  void update(void Function(MagazineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Magazine build() {
    final _$result = _$v ??
        new _$Magazine._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, 'Magazine', 'malId'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Magazine', 'name'),
            url: BuiltValueNullFieldError.checkNotNull(url, 'Magazine', 'url'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'Magazine', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
