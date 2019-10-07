// GENERATED CODE - DO NOT MODIFY BY HAND

part of review;

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

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'helpful_count',
      serializers.serialize(object.helpfulCount,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'reviewer',
      serializers.serialize(object.reviewer,
          specifiedType: const FullType(Reviewer)),
    ];

    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'helpful_count':
          result.helpfulCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviewer':
          result.reviewer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Reviewer)) as Reviewer);
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final int malId;
  @override
  final String url;
  @override
  final int helpfulCount;
  @override
  final String date;
  @override
  final String content;
  @override
  final Reviewer reviewer;

  factory _$Review([void updates(ReviewBuilder b)]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._(
      {this.malId,
      this.url,
      this.helpfulCount,
      this.date,
      this.content,
      this.reviewer})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Review', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Review', 'url');
    }
    if (helpfulCount == null) {
      throw new BuiltValueNullFieldError('Review', 'helpfulCount');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Review', 'date');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('Review', 'content');
    }
    if (reviewer == null) {
      throw new BuiltValueNullFieldError('Review', 'reviewer');
    }
  }

  @override
  Review rebuild(void updates(ReviewBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        malId == other.malId &&
        url == other.url &&
        helpfulCount == other.helpfulCount &&
        date == other.date &&
        content == other.content &&
        reviewer == other.reviewer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, malId.hashCode), url.hashCode),
                    helpfulCount.hashCode),
                date.hashCode),
            content.hashCode),
        reviewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('malId', malId)
          ..add('url', url)
          ..add('helpfulCount', helpfulCount)
          ..add('date', date)
          ..add('content', content)
          ..add('reviewer', reviewer))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _helpfulCount;
  int get helpfulCount => _$this._helpfulCount;
  set helpfulCount(int helpfulCount) => _$this._helpfulCount = helpfulCount;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ReviewerBuilder _reviewer;
  ReviewerBuilder get reviewer => _$this._reviewer ??= new ReviewerBuilder();
  set reviewer(ReviewerBuilder reviewer) => _$this._reviewer = reviewer;

  ReviewBuilder();

  ReviewBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _helpfulCount = _$v.helpfulCount;
      _date = _$v.date;
      _content = _$v.content;
      _reviewer = _$v.reviewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Review;
  }

  @override
  void update(void updates(ReviewBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          new _$Review._(
              malId: malId,
              url: url,
              helpfulCount: helpfulCount,
              date: date,
              content: content,
              reviewer: reviewer.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviewer';
        reviewer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
