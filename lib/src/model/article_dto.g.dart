// GENERATED CODE - DO NOT MODIFY BY HAND

part of article_dto;

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

Serializer<ArticleDto> _$articleDtoSerializer = new _$ArticleDtoSerializer();

class _$ArticleDtoSerializer implements StructuredSerializer<ArticleDto> {
  @override
  final Iterable<Type> types = const [ArticleDto, _$ArticleDto];
  @override
  final String wireName = 'ArticleDto';

  @override
  Iterable serialize(Serializers serializers, ArticleDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'author_name',
      serializers.serialize(object.authorName,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
      'forum_url',
      serializers.serialize(object.forumUrl,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(int)),
      'intro',
      serializers.serialize(object.intro,
          specifiedType: const FullType(String)),
    ];
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ArticleDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleDtoBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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
        case 'forum_url':
          result.forumUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'intro':
          result.intro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleDto extends ArticleDto {
  @override
  final String url;
  @override
  final String title;
  @override
  final String date;
  @override
  final String authorName;
  @override
  final String authorUrl;
  @override
  final String forumUrl;
  @override
  final String imageUrl;
  @override
  final int comments;
  @override
  final String intro;

  factory _$ArticleDto([void updates(ArticleDtoBuilder b)]) =>
      (new ArticleDtoBuilder()..update(updates)).build();

  _$ArticleDto._(
      {this.url,
      this.title,
      this.date,
      this.authorName,
      this.authorUrl,
      this.forumUrl,
      this.imageUrl,
      this.comments,
      this.intro})
      : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'date');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'authorName');
    }
    if (authorUrl == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'authorUrl');
    }
    if (forumUrl == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'forumUrl');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'comments');
    }
    if (intro == null) {
      throw new BuiltValueNullFieldError('ArticleDto', 'intro');
    }
  }

  @override
  ArticleDto rebuild(void updates(ArticleDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleDtoBuilder toBuilder() => new ArticleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleDto &&
        url == other.url &&
        title == other.title &&
        date == other.date &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        forumUrl == other.forumUrl &&
        imageUrl == other.imageUrl &&
        comments == other.comments &&
        intro == other.intro;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, url.hashCode), title.hashCode),
                                date.hashCode),
                            authorName.hashCode),
                        authorUrl.hashCode),
                    forumUrl.hashCode),
                imageUrl.hashCode),
            comments.hashCode),
        intro.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticleDto')
          ..add('url', url)
          ..add('title', title)
          ..add('date', date)
          ..add('authorName', authorName)
          ..add('authorUrl', authorUrl)
          ..add('forumUrl', forumUrl)
          ..add('imageUrl', imageUrl)
          ..add('comments', comments)
          ..add('intro', intro))
        .toString();
  }
}

class ArticleDtoBuilder implements Builder<ArticleDto, ArticleDtoBuilder> {
  _$ArticleDto _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _authorUrl;
  String get authorUrl => _$this._authorUrl;
  set authorUrl(String authorUrl) => _$this._authorUrl = authorUrl;

  String _forumUrl;
  String get forumUrl => _$this._forumUrl;
  set forumUrl(String forumUrl) => _$this._forumUrl = forumUrl;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  int _comments;
  int get comments => _$this._comments;
  set comments(int comments) => _$this._comments = comments;

  String _intro;
  String get intro => _$this._intro;
  set intro(String intro) => _$this._intro = intro;

  ArticleDtoBuilder();

  ArticleDtoBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _title = _$v.title;
      _date = _$v.date;
      _authorName = _$v.authorName;
      _authorUrl = _$v.authorUrl;
      _forumUrl = _$v.forumUrl;
      _imageUrl = _$v.imageUrl;
      _comments = _$v.comments;
      _intro = _$v.intro;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ArticleDto;
  }

  @override
  void update(void updates(ArticleDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticleDto build() {
    final _$result = _$v ??
        new _$ArticleDto._(
            url: url,
            title: title,
            date: date,
            authorName: authorName,
            authorUrl: authorUrl,
            forumUrl: forumUrl,
            imageUrl: imageUrl,
            comments: comments,
            intro: intro);
    replace(_$result);
    return _$result;
  }
}
