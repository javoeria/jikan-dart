// GENERATED CODE - DO NOT MODIFY BY HAND

part of manga_character;

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

Serializer<MangaCharacter> _$mangaCharacterSerializer =
    new _$MangaCharacterSerializer();

class _$MangaCharacterSerializer
    implements StructuredSerializer<MangaCharacter> {
  @override
  final Iterable<Type> types = const [MangaCharacter, _$MangaCharacter];
  @override
  final String wireName = 'MangaCharacter';

  @override
  Iterable serialize(Serializers serializers, MangaCharacter object,
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
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MangaCharacter deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MangaCharacterBuilder();

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
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MangaCharacter extends MangaCharacter {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String role;

  factory _$MangaCharacter([void updates(MangaCharacterBuilder b)]) =>
      (new MangaCharacterBuilder()..update(updates)).build();

  _$MangaCharacter._(
      {this.malId, this.url, this.imageUrl, this.name, this.role})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('MangaCharacter', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('MangaCharacter', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('MangaCharacter', 'imageUrl');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MangaCharacter', 'name');
    }
    if (role == null) {
      throw new BuiltValueNullFieldError('MangaCharacter', 'role');
    }
  }

  @override
  MangaCharacter rebuild(void updates(MangaCharacterBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaCharacterBuilder toBuilder() =>
      new MangaCharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MangaCharacter &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode),
            name.hashCode),
        role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MangaCharacter')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class MangaCharacterBuilder
    implements Builder<MangaCharacter, MangaCharacterBuilder> {
  _$MangaCharacter _$v;

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

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  MangaCharacterBuilder();

  MangaCharacterBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _name = _$v.name;
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MangaCharacter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MangaCharacter;
  }

  @override
  void update(void updates(MangaCharacterBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MangaCharacter build() {
    final _$result = _$v ??
        new _$MangaCharacter._(
            malId: malId, url: url, imageUrl: imageUrl, name: name, role: role);
    replace(_$result);
    return _$result;
  }
}
