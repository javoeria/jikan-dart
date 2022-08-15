// GENERATED CODE - DO NOT MODIFY BY HAND

part of review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object?> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(Reviewer)),
      'review',
      serializers.serialize(object.review,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(Reviewer))! as Reviewer);
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final String? type;
  @override
  final int votes;
  @override
  final String date;
  @override
  final Reviewer user;
  @override
  final String review;

  factory _$Review([void Function(ReviewBuilder)? updates]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._(
      {required this.malId,
      required this.url,
      this.type,
      required this.votes,
      required this.date,
      required this.user,
      required this.review})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Review', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Review', 'url');
    BuiltValueNullFieldError.checkNotNull(votes, 'Review', 'votes');
    BuiltValueNullFieldError.checkNotNull(date, 'Review', 'date');
    BuiltValueNullFieldError.checkNotNull(user, 'Review', 'user');
    BuiltValueNullFieldError.checkNotNull(review, 'Review', 'review');
  }

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        malId == other.malId &&
        url == other.url &&
        type == other.type &&
        votes == other.votes &&
        date == other.date &&
        user == other.user &&
        review == other.review;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, malId.hashCode), url.hashCode),
                        type.hashCode),
                    votes.hashCode),
                date.hashCode),
            user.hashCode),
        review.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('malId', malId)
          ..add('url', url)
          ..add('type', type)
          ..add('votes', votes)
          ..add('date', date)
          ..add('user', user)
          ..add('review', review))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  ReviewerBuilder? _user;
  ReviewerBuilder get user => _$this._user ??= new ReviewerBuilder();
  set user(ReviewerBuilder? user) => _$this._user = user;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  ReviewBuilder();

  ReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _type = $v.type;
      _votes = $v.votes;
      _date = $v.date;
      _user = $v.user.toBuilder();
      _review = $v.review;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          new _$Review._(
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, 'Review', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(url, 'Review', 'url'),
              type: type,
              votes: BuiltValueNullFieldError.checkNotNull(
                  votes, 'Review', 'votes'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, 'Review', 'date'),
              user: user.build(),
              review: BuiltValueNullFieldError.checkNotNull(
                  review, 'Review', 'review'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
