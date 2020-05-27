// GENERATED CODE - DO NOT MODIFY BY HAND

part of member;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Member> _$memberSerializer = new _$MemberSerializer();

class _$MemberSerializer implements StructuredSerializer<Member> {
  @override
  final Iterable<Type> types = const [Member, _$Member];
  @override
  final String wireName = 'Member';

  @override
  Iterable<Object> serialize(Serializers serializers, Member object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Member deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MemberBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Member extends Member {
  @override
  final String username;
  @override
  final String url;
  @override
  final String imageUrl;

  factory _$Member([void Function(MemberBuilder) updates]) =>
      (new MemberBuilder()..update(updates)).build();

  _$Member._({this.username, this.url, this.imageUrl}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('Member', 'username');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Member', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Member', 'imageUrl');
    }
  }

  @override
  Member rebuild(void Function(MemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberBuilder toBuilder() => new MemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Member &&
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
    return (newBuiltValueToStringHelper('Member')
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class MemberBuilder implements Builder<Member, MemberBuilder> {
  _$Member _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  MemberBuilder();

  MemberBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Member other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Member;
  }

  @override
  void update(void Function(MemberBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Member build() {
    final _$result =
        _$v ?? new _$Member._(username: username, url: url, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
