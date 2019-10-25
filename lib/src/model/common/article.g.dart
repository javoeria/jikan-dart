// GENERATED CODE - DO NOT MODIFY BY HAND

part of article;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
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
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

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

class _$Article extends Article {
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

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
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
      throw new BuiltValueNullFieldError('Article', 'url');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Article', 'title');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Article', 'date');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('Article', 'authorName');
    }
    if (authorUrl == null) {
      throw new BuiltValueNullFieldError('Article', 'authorUrl');
    }
    if (forumUrl == null) {
      throw new BuiltValueNullFieldError('Article', 'forumUrl');
    }
    if (comments == null) {
      throw new BuiltValueNullFieldError('Article', 'comments');
    }
    if (intro == null) {
      throw new BuiltValueNullFieldError('Article', 'intro');
    }
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
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
    return (newBuiltValueToStringHelper('Article')
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

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

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

  ArticleBuilder();

  ArticleBuilder get _$this {
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
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    final _$result = _$v ??
        new _$Article._(
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
