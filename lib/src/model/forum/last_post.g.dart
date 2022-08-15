// GENERATED CODE - DO NOT MODIFY BY HAND

part of last_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LastPost> _$lastPostSerializer = new _$LastPostSerializer();

class _$LastPostSerializer implements StructuredSerializer<LastPost> {
  @override
  final Iterable<Type> types = const [LastPost, _$LastPost];
  @override
  final String wireName = 'LastPost';

  @override
  Iterable<Object?> serialize(Serializers serializers, LastPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'author_username',
      serializers.serialize(object.authorUsername,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LastPost deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_username':
          result.authorUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_url':
          result.authorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LastPost extends LastPost {
  @override
  final String url;
  @override
  final String authorUsername;
  @override
  final String authorUrl;
  @override
  final String? date;

  factory _$LastPost([void Function(LastPostBuilder)? updates]) =>
      (new LastPostBuilder()..update(updates)).build();

  _$LastPost._(
      {required this.url,
      required this.authorUsername,
      required this.authorUrl,
      this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(url, 'LastPost', 'url');
    BuiltValueNullFieldError.checkNotNull(
        authorUsername, 'LastPost', 'authorUsername');
    BuiltValueNullFieldError.checkNotNull(authorUrl, 'LastPost', 'authorUrl');
  }

  @override
  LastPost rebuild(void Function(LastPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastPostBuilder toBuilder() => new LastPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastPost &&
        url == other.url &&
        authorUsername == other.authorUsername &&
        authorUrl == other.authorUrl &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), authorUsername.hashCode),
            authorUrl.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LastPost')
          ..add('url', url)
          ..add('authorUsername', authorUsername)
          ..add('authorUrl', authorUrl)
          ..add('date', date))
        .toString();
  }
}

class LastPostBuilder implements Builder<LastPost, LastPostBuilder> {
  _$LastPost? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _authorUsername;
  String? get authorUsername => _$this._authorUsername;
  set authorUsername(String? authorUsername) =>
      _$this._authorUsername = authorUsername;

  String? _authorUrl;
  String? get authorUrl => _$this._authorUrl;
  set authorUrl(String? authorUrl) => _$this._authorUrl = authorUrl;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  LastPostBuilder();

  LastPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _authorUsername = $v.authorUsername;
      _authorUrl = $v.authorUrl;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LastPost;
  }

  @override
  void update(void Function(LastPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LastPost build() {
    final _$result = _$v ??
        new _$LastPost._(
            url: BuiltValueNullFieldError.checkNotNull(url, 'LastPost', 'url'),
            authorUsername: BuiltValueNullFieldError.checkNotNull(
                authorUsername, 'LastPost', 'authorUsername'),
            authorUrl: BuiltValueNullFieldError.checkNotNull(
                authorUrl, 'LastPost', 'authorUrl'),
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
