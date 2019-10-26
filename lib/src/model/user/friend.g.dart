// GENERATED CODE - DO NOT MODIFY BY HAND

part of friend;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Friend> _$friendSerializer = new _$FriendSerializer();

class _$FriendSerializer implements StructuredSerializer<Friend> {
  @override
  final Iterable<Type> types = const [Friend, _$Friend];
  @override
  final String wireName = 'Friend';

  @override
  Iterable<Object> serialize(Serializers serializers, Friend object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'last_online',
      serializers.serialize(object.lastOnline,
          specifiedType: const FullType(String)),
    ];
    if (object.friendsSince != null) {
      result
        ..add('friends_since')
        ..add(serializers.serialize(object.friendsSince,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Friend deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FriendBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_online':
          result.lastOnline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'friends_since':
          result.friendsSince = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Friend extends Friend {
  @override
  final String url;
  @override
  final String username;
  @override
  final String imageUrl;
  @override
  final String lastOnline;
  @override
  final String friendsSince;

  factory _$Friend([void Function(FriendBuilder) updates]) =>
      (new FriendBuilder()..update(updates)).build();

  _$Friend._(
      {this.url,
      this.username,
      this.imageUrl,
      this.lastOnline,
      this.friendsSince})
      : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('Friend', 'url');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('Friend', 'username');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Friend', 'imageUrl');
    }
    if (lastOnline == null) {
      throw new BuiltValueNullFieldError('Friend', 'lastOnline');
    }
  }

  @override
  Friend rebuild(void Function(FriendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FriendBuilder toBuilder() => new FriendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Friend &&
        url == other.url &&
        username == other.username &&
        imageUrl == other.imageUrl &&
        lastOnline == other.lastOnline &&
        friendsSince == other.friendsSince;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, url.hashCode), username.hashCode),
                imageUrl.hashCode),
            lastOnline.hashCode),
        friendsSince.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Friend')
          ..add('url', url)
          ..add('username', username)
          ..add('imageUrl', imageUrl)
          ..add('lastOnline', lastOnline)
          ..add('friendsSince', friendsSince))
        .toString();
  }
}

class FriendBuilder implements Builder<Friend, FriendBuilder> {
  _$Friend _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _lastOnline;
  String get lastOnline => _$this._lastOnline;
  set lastOnline(String lastOnline) => _$this._lastOnline = lastOnline;

  String _friendsSince;
  String get friendsSince => _$this._friendsSince;
  set friendsSince(String friendsSince) => _$this._friendsSince = friendsSince;

  FriendBuilder();

  FriendBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _username = _$v.username;
      _imageUrl = _$v.imageUrl;
      _lastOnline = _$v.lastOnline;
      _friendsSince = _$v.friendsSince;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Friend other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Friend;
  }

  @override
  void update(void Function(FriendBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Friend build() {
    final _$result = _$v ??
        new _$Friend._(
            url: url,
            username: username,
            imageUrl: imageUrl,
            lastOnline: lastOnline,
            friendsSince: friendsSince);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
