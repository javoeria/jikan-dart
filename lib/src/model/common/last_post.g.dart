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
  Iterable<Object> serialize(Serializers serializers, LastPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'author_name',
      serializers.serialize(object.authorName,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
    ];
    if (object.datePosted != null) {
      result
        ..add('date_posted')
        ..add(serializers.serialize(object.datePosted,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LastPost deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastPostBuilder();

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
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_url':
          result.authorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_posted':
          result.datePosted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final String authorName;
  @override
  final String authorUrl;
  @override
  final String datePosted;

  factory _$LastPost([void Function(LastPostBuilder) updates]) =>
      (new LastPostBuilder()..update(updates)).build();

  _$LastPost._({this.url, this.authorName, this.authorUrl, this.datePosted})
      : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('LastPost', 'url');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('LastPost', 'authorName');
    }
    if (authorUrl == null) {
      throw new BuiltValueNullFieldError('LastPost', 'authorUrl');
    }
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
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        datePosted == other.datePosted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), authorName.hashCode), authorUrl.hashCode),
        datePosted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LastPost')
          ..add('url', url)
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('datePosted', datePosted))
        .toString();
  }
}

class LastPostBuilder implements Builder<LastPost, LastPostBuilder> {
  _$LastPost _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _authorUrl;
  String get authorUrl => _$this._authorUrl;
  set authorUrl(String authorUrl) => _$this._authorUrl = authorUrl;

  String _datePosted;
  String get datePosted => _$this._datePosted;
  set datePosted(String datePosted) => _$this._datePosted = datePosted;

  LastPostBuilder();

  LastPostBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _authorName = _$v.authorName;
      _authorUrl = _$v.authorUrl;
      _datePosted = _$v.datePosted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastPost other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LastPost;
  }

  @override
  void update(void Function(LastPostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LastPost build() {
    final _$result = _$v ??
        new _$LastPost._(
            url: url,
            authorName: authorName,
            authorUrl: authorUrl,
            datePosted: datePosted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
