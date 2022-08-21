// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_meta;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserMeta> _$userMetaSerializer = new _$UserMetaSerializer();

class _$UserMetaSerializer implements StructuredSerializer<UserMeta> {
  @override
  final Iterable<Type> types = const [UserMeta, _$UserMeta];
  @override
  final String wireName = 'UserMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserMeta extends UserMeta {
  @override
  final String username;
  @override
  final String url;
  @override
  final String? imageUrl;

  factory _$UserMeta([void Function(UserMetaBuilder)? updates]) =>
      (new UserMetaBuilder()..update(updates))._build();

  _$UserMeta._({required this.username, required this.url, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(username, r'UserMeta', 'username');
    BuiltValueNullFieldError.checkNotNull(url, r'UserMeta', 'url');
  }

  @override
  UserMeta rebuild(void Function(UserMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserMetaBuilder toBuilder() => new UserMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMeta &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, username.hashCode), url.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserMeta')
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class UserMetaBuilder implements Builder<UserMeta, UserMetaBuilder> {
  _$UserMeta? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  UserMetaBuilder();

  UserMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserMeta;
  }

  @override
  void update(void Function(UserMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserMeta build() => _build();

  _$UserMeta _build() {
    final _$result = _$v ??
        new _$UserMeta._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserMeta', 'username'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'UserMeta', 'url'),
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
