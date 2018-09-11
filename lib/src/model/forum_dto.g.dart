// GENERATED CODE - DO NOT MODIFY BY HAND

part of forum_dto;

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

Serializer<ForumDto> _$forumDtoSerializer = new _$ForumDtoSerializer();

class _$ForumDtoSerializer implements StructuredSerializer<ForumDto> {
  @override
  final Iterable<Type> types = const [ForumDto, _$ForumDto];
  @override
  final String wireName = 'ForumDto';

  @override
  Iterable serialize(Serializers serializers, ForumDto object,
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
          specifiedType: const FullType(LastPostDto)),
    ];

    return result;
  }

  @override
  ForumDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForumDtoBuilder();

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
              specifiedType: const FullType(LastPostDto)) as LastPostDto);
          break;
      }
    }

    return result.build();
  }
}

class _$ForumDto extends ForumDto {
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
  final LastPostDto lastPost;

  factory _$ForumDto([void updates(ForumDtoBuilder b)]) =>
      (new ForumDtoBuilder()..update(updates)).build();

  _$ForumDto._(
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
      throw new BuiltValueNullFieldError('ForumDto', 'topicId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'title');
    }
    if (datePosted == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'datePosted');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'authorName');
    }
    if (authorUrl == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'authorUrl');
    }
    if (replies == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'replies');
    }
    if (lastPost == null) {
      throw new BuiltValueNullFieldError('ForumDto', 'lastPost');
    }
  }

  @override
  ForumDto rebuild(void updates(ForumDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ForumDtoBuilder toBuilder() => new ForumDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForumDto &&
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
    return (newBuiltValueToStringHelper('ForumDto')
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

class ForumDtoBuilder implements Builder<ForumDto, ForumDtoBuilder> {
  _$ForumDto _$v;

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

  LastPostDtoBuilder _lastPost;
  LastPostDtoBuilder get lastPost =>
      _$this._lastPost ??= new LastPostDtoBuilder();
  set lastPost(LastPostDtoBuilder lastPost) => _$this._lastPost = lastPost;

  ForumDtoBuilder();

  ForumDtoBuilder get _$this {
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
  void replace(ForumDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ForumDto;
  }

  @override
  void update(void updates(ForumDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ForumDto build() {
    _$ForumDto _$result;
    try {
      _$result = _$v ??
          new _$ForumDto._(
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
            'ForumDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
