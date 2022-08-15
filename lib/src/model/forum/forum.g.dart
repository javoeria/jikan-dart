// GENERATED CODE - DO NOT MODIFY BY HAND

part of forum;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Forum> _$forumSerializer = new _$ForumSerializer();

class _$ForumSerializer implements StructuredSerializer<Forum> {
  @override
  final Iterable<Type> types = const [Forum, _$Forum];
  @override
  final String wireName = 'Forum';

  @override
  Iterable<Object?> serialize(Serializers serializers, Forum object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'author_username',
      serializers.serialize(object.authorUsername,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(int)),
      'last_comment',
      serializers.serialize(object.lastComment,
          specifiedType: const FullType(LastPost)),
    ];

    return result;
  }

  @override
  Forum deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForumBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_comment':
          result.lastComment.replace(serializers.deserialize(value,
              specifiedType: const FullType(LastPost))! as LastPost);
          break;
      }
    }

    return result.build();
  }
}

class _$Forum extends Forum {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String title;
  @override
  final String date;
  @override
  final String authorUsername;
  @override
  final String authorUrl;
  @override
  final int comments;
  @override
  final LastPost lastComment;

  factory _$Forum([void Function(ForumBuilder)? updates]) =>
      (new ForumBuilder()..update(updates)).build();

  _$Forum._(
      {required this.malId,
      required this.url,
      required this.title,
      required this.date,
      required this.authorUsername,
      required this.authorUrl,
      required this.comments,
      required this.lastComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Forum', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Forum', 'url');
    BuiltValueNullFieldError.checkNotNull(title, 'Forum', 'title');
    BuiltValueNullFieldError.checkNotNull(date, 'Forum', 'date');
    BuiltValueNullFieldError.checkNotNull(
        authorUsername, 'Forum', 'authorUsername');
    BuiltValueNullFieldError.checkNotNull(authorUrl, 'Forum', 'authorUrl');
    BuiltValueNullFieldError.checkNotNull(comments, 'Forum', 'comments');
    BuiltValueNullFieldError.checkNotNull(lastComment, 'Forum', 'lastComment');
  }

  @override
  Forum rebuild(void Function(ForumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForumBuilder toBuilder() => new ForumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forum &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        date == other.date &&
        authorUsername == other.authorUsername &&
        authorUrl == other.authorUrl &&
        comments == other.comments &&
        lastComment == other.lastComment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, malId.hashCode), url.hashCode),
                            title.hashCode),
                        date.hashCode),
                    authorUsername.hashCode),
                authorUrl.hashCode),
            comments.hashCode),
        lastComment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Forum')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('date', date)
          ..add('authorUsername', authorUsername)
          ..add('authorUrl', authorUrl)
          ..add('comments', comments)
          ..add('lastComment', lastComment))
        .toString();
  }
}

class ForumBuilder implements Builder<Forum, ForumBuilder> {
  _$Forum? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _authorUsername;
  String? get authorUsername => _$this._authorUsername;
  set authorUsername(String? authorUsername) =>
      _$this._authorUsername = authorUsername;

  String? _authorUrl;
  String? get authorUrl => _$this._authorUrl;
  set authorUrl(String? authorUrl) => _$this._authorUrl = authorUrl;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  LastPostBuilder? _lastComment;
  LastPostBuilder get lastComment =>
      _$this._lastComment ??= new LastPostBuilder();
  set lastComment(LastPostBuilder? lastComment) =>
      _$this._lastComment = lastComment;

  ForumBuilder();

  ForumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _title = $v.title;
      _date = $v.date;
      _authorUsername = $v.authorUsername;
      _authorUrl = $v.authorUrl;
      _comments = $v.comments;
      _lastComment = $v.lastComment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Forum;
  }

  @override
  void update(void Function(ForumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Forum build() {
    _$Forum _$result;
    try {
      _$result = _$v ??
          new _$Forum._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, 'Forum', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Forum', 'url'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'Forum', 'title'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, 'Forum', 'date'),
              authorUsername: BuiltValueNullFieldError.checkNotNull(
                  authorUsername, 'Forum', 'authorUsername'),
              authorUrl: BuiltValueNullFieldError.checkNotNull(
                  authorUrl, 'Forum', 'authorUrl'),
              comments: BuiltValueNullFieldError.checkNotNull(
                  comments, 'Forum', 'comments'),
              lastComment: lastComment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastComment';
        lastComment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Forum', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
