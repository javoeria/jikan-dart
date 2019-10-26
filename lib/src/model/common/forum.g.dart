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
  Iterable<Object> serialize(Serializers serializers, Forum object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'topic_id',
      serializers.serialize(object.topicId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date_posted',
      serializers.serialize(object.datePosted,
          specifiedType: const FullType(String)),
      'author_name',
      serializers.serialize(object.authorName,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
      'replies',
      serializers.serialize(object.replies, specifiedType: const FullType(int)),
      'last_post',
      serializers.serialize(object.lastPost,
          specifiedType: const FullType(LastPost)),
    ];

    return result;
  }

  @override
  Forum deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForumBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'topic_id':
          result.topicId = serializers.deserialize(value,
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
        case 'date_posted':
          result.datePosted = serializers.deserialize(value,
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
        case 'replies':
          result.replies = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_post':
          result.lastPost.replace(serializers.deserialize(value,
              specifiedType: const FullType(LastPost)) as LastPost);
          break;
      }
    }

    return result.build();
  }
}

class _$Forum extends Forum {
  @override
  final int topicId;
  @override
  final String url;
  @override
  final String title;
  @override
  final String datePosted;
  @override
  final String authorName;
  @override
  final String authorUrl;
  @override
  final int replies;
  @override
  final LastPost lastPost;

  factory _$Forum([void Function(ForumBuilder) updates]) =>
      (new ForumBuilder()..update(updates)).build();

  _$Forum._(
      {this.topicId,
      this.url,
      this.title,
      this.datePosted,
      this.authorName,
      this.authorUrl,
      this.replies,
      this.lastPost})
      : super._() {
    if (topicId == null) {
      throw new BuiltValueNullFieldError('Forum', 'topicId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Forum', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Forum', 'title');
    }
    if (datePosted == null) {
      throw new BuiltValueNullFieldError('Forum', 'datePosted');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('Forum', 'authorName');
    }
    if (authorUrl == null) {
      throw new BuiltValueNullFieldError('Forum', 'authorUrl');
    }
    if (replies == null) {
      throw new BuiltValueNullFieldError('Forum', 'replies');
    }
    if (lastPost == null) {
      throw new BuiltValueNullFieldError('Forum', 'lastPost');
    }
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
        topicId == other.topicId &&
        url == other.url &&
        title == other.title &&
        datePosted == other.datePosted &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        replies == other.replies &&
        lastPost == other.lastPost;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, topicId.hashCode), url.hashCode),
                            title.hashCode),
                        datePosted.hashCode),
                    authorName.hashCode),
                authorUrl.hashCode),
            replies.hashCode),
        lastPost.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Forum')
          ..add('topicId', topicId)
          ..add('url', url)
          ..add('title', title)
          ..add('datePosted', datePosted)
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('replies', replies)
          ..add('lastPost', lastPost))
        .toString();
  }
}

class ForumBuilder implements Builder<Forum, ForumBuilder> {
  _$Forum _$v;

  int _topicId;
  int get topicId => _$this._topicId;
  set topicId(int topicId) => _$this._topicId = topicId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _datePosted;
  String get datePosted => _$this._datePosted;
  set datePosted(String datePosted) => _$this._datePosted = datePosted;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _authorUrl;
  String get authorUrl => _$this._authorUrl;
  set authorUrl(String authorUrl) => _$this._authorUrl = authorUrl;

  int _replies;
  int get replies => _$this._replies;
  set replies(int replies) => _$this._replies = replies;

  LastPostBuilder _lastPost;
  LastPostBuilder get lastPost => _$this._lastPost ??= new LastPostBuilder();
  set lastPost(LastPostBuilder lastPost) => _$this._lastPost = lastPost;

  ForumBuilder();

  ForumBuilder get _$this {
    if (_$v != null) {
      _topicId = _$v.topicId;
      _url = _$v.url;
      _title = _$v.title;
      _datePosted = _$v.datePosted;
      _authorName = _$v.authorName;
      _authorUrl = _$v.authorUrl;
      _replies = _$v.replies;
      _lastPost = _$v.lastPost?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forum other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Forum;
  }

  @override
  void update(void Function(ForumBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Forum build() {
    _$Forum _$result;
    try {
      _$result = _$v ??
          new _$Forum._(
              topicId: topicId,
              url: url,
              title: title,
              datePosted: datePosted,
              authorName: authorName,
              authorUrl: authorUrl,
              replies: replies,
              lastPost: lastPost.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lastPost';
        lastPost.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
