// GENERATED CODE - DO NOT MODIFY BY HAND

part of character_meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CharacterMeta> _$characterMetaSerializer =
    new _$CharacterMetaSerializer();

class _$CharacterMetaSerializer implements StructuredSerializer<CharacterMeta> {
  @override
  final Iterable<Type> types = const [CharacterMeta, _$CharacterMeta];
  @override
  final String wireName = 'CharacterMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, CharacterMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
    Object? value;
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.voiceActors;
    if (value != null) {
      result
        ..add('voice_actors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(PersonMeta)])));
    }
    return result;
  }

  @override
  CharacterMeta deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'voice_actors':
          result.voiceActors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PersonMeta)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CharacterMeta extends CharacterMeta {
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
  @override
  final int? favorites;
  @override
  final BuiltList<PersonMeta>? voiceActors;

  factory _$CharacterMeta([void Function(CharacterMetaBuilder)? updates]) =>
      (new CharacterMetaBuilder()..update(updates))._build();

  _$CharacterMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.name,
      required this.role,
      this.favorites,
      this.voiceActors})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, r'CharacterMeta', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, r'CharacterMeta', 'url');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, r'CharacterMeta', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(name, r'CharacterMeta', 'name');
    BuiltValueNullFieldError.checkNotNull(role, r'CharacterMeta', 'role');
  }

  @override
  CharacterMeta rebuild(void Function(CharacterMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterMetaBuilder toBuilder() => new CharacterMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterMeta &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        role == other.role &&
        favorites == other.favorites &&
        voiceActors == other.voiceActors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, malId.hashCode), url.hashCode),
                        imageUrl.hashCode),
                    name.hashCode),
                role.hashCode),
            favorites.hashCode),
        voiceActors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CharacterMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('role', role)
          ..add('favorites', favorites)
          ..add('voiceActors', voiceActors))
        .toString();
  }
}

class CharacterMetaBuilder
    implements Builder<CharacterMeta, CharacterMetaBuilder> {
  _$CharacterMeta? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  int? _favorites;
  int? get favorites => _$this._favorites;
  set favorites(int? favorites) => _$this._favorites = favorites;

  ListBuilder<PersonMeta>? _voiceActors;
  ListBuilder<PersonMeta> get voiceActors =>
      _$this._voiceActors ??= new ListBuilder<PersonMeta>();
  set voiceActors(ListBuilder<PersonMeta>? voiceActors) =>
      _$this._voiceActors = voiceActors;

  CharacterMetaBuilder();

  CharacterMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _role = $v.role;
      _favorites = $v.favorites;
      _voiceActors = $v.voiceActors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CharacterMeta;
  }

  @override
  void update(void Function(CharacterMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CharacterMeta build() => _build();

  _$CharacterMeta _build() {
    _$CharacterMeta _$result;
    try {
      _$result = _$v ??
          new _$CharacterMeta._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, r'CharacterMeta', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'CharacterMeta', 'url'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, r'CharacterMeta', 'imageUrl'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CharacterMeta', 'name'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'CharacterMeta', 'role'),
              favorites: favorites,
              voiceActors: _voiceActors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voiceActors';
        _voiceActors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CharacterMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
