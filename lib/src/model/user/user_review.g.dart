// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserReview> _$userReviewSerializer = new _$UserReviewSerializer();

class _$UserReviewSerializer implements StructuredSerializer<UserReview> {
  @override
  final Iterable<Type> types = const [UserReview, _$UserReview];
  @override
  final String wireName = 'UserReview';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserMeta)),
      'entry',
      serializers.serialize(object.entry,
          specifiedType: const FullType(EntryMeta)),
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'review',
      serializers.serialize(object.review,
          specifiedType: const FullType(String)),
      'scores',
      serializers.serialize(object.scores,
          specifiedType: const FullType(Scores)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodesWatched;
    if (value != null) {
      result
        ..add('episodes_watched')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersRead;
    if (value != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserReview deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserMeta))! as UserMeta);
          break;
        case 'entry':
          result.entry.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntryMeta))! as EntryMeta);
          break;
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episodes_watched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(Scores))! as Scores);
          break;
      }
    }

    return result.build();
  }
}

class _$UserReview extends UserReview {
  @override
  final UserMeta user;
  @override
  final EntryMeta entry;
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
  final String review;
  @override
  final int? episodesWatched;
  @override
  final int? chaptersRead;
  @override
  final Scores scores;

  factory _$UserReview([void Function(UserReviewBuilder)? updates]) =>
      (new UserReviewBuilder()..update(updates))._build();

  _$UserReview._(
      {required this.user,
      required this.entry,
      required this.malId,
      required this.url,
      this.type,
      required this.votes,
      required this.date,
      required this.review,
      this.episodesWatched,
      this.chaptersRead,
      required this.scores})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(user, r'UserReview', 'user');
    BuiltValueNullFieldError.checkNotNull(entry, r'UserReview', 'entry');
    BuiltValueNullFieldError.checkNotNull(malId, r'UserReview', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, r'UserReview', 'url');
    BuiltValueNullFieldError.checkNotNull(votes, r'UserReview', 'votes');
    BuiltValueNullFieldError.checkNotNull(date, r'UserReview', 'date');
    BuiltValueNullFieldError.checkNotNull(review, r'UserReview', 'review');
    BuiltValueNullFieldError.checkNotNull(scores, r'UserReview', 'scores');
  }

  @override
  UserReview rebuild(void Function(UserReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserReviewBuilder toBuilder() => new UserReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserReview &&
        user == other.user &&
        entry == other.entry &&
        malId == other.malId &&
        url == other.url &&
        type == other.type &&
        votes == other.votes &&
        date == other.date &&
        review == other.review &&
        episodesWatched == other.episodesWatched &&
        chaptersRead == other.chaptersRead &&
        scores == other.scores;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, user.hashCode),
                                            entry.hashCode),
                                        malId.hashCode),
                                    url.hashCode),
                                type.hashCode),
                            votes.hashCode),
                        date.hashCode),
                    review.hashCode),
                episodesWatched.hashCode),
            chaptersRead.hashCode),
        scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserReview')
          ..add('user', user)
          ..add('entry', entry)
          ..add('malId', malId)
          ..add('url', url)
          ..add('type', type)
          ..add('votes', votes)
          ..add('date', date)
          ..add('review', review)
          ..add('episodesWatched', episodesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('scores', scores))
        .toString();
  }
}

class UserReviewBuilder implements Builder<UserReview, UserReviewBuilder> {
  _$UserReview? _$v;

  UserMetaBuilder? _user;
  UserMetaBuilder get user => _$this._user ??= new UserMetaBuilder();
  set user(UserMetaBuilder? user) => _$this._user = user;

  EntryMetaBuilder? _entry;
  EntryMetaBuilder get entry => _$this._entry ??= new EntryMetaBuilder();
  set entry(EntryMetaBuilder? entry) => _$this._entry = entry;

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

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  int? _episodesWatched;
  int? get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int? episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ScoresBuilder? _scores;
  ScoresBuilder get scores => _$this._scores ??= new ScoresBuilder();
  set scores(ScoresBuilder? scores) => _$this._scores = scores;

  UserReviewBuilder();

  UserReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _entry = $v.entry.toBuilder();
      _malId = $v.malId;
      _url = $v.url;
      _type = $v.type;
      _votes = $v.votes;
      _date = $v.date;
      _review = $v.review;
      _episodesWatched = $v.episodesWatched;
      _chaptersRead = $v.chaptersRead;
      _scores = $v.scores.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserReview;
  }

  @override
  void update(void Function(UserReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserReview build() => _build();

  _$UserReview _build() {
    _$UserReview _$result;
    try {
      _$result = _$v ??
          new _$UserReview._(
              user: user.build(),
              entry: entry.build(),
              malId: BuiltValueNullFieldError.checkNotNull(
                  malId, r'UserReview', 'malId'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'UserReview', 'url'),
              type: type,
              votes: BuiltValueNullFieldError.checkNotNull(
                  votes, r'UserReview', 'votes'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'UserReview', 'date'),
              review: BuiltValueNullFieldError.checkNotNull(
                  review, r'UserReview', 'review'),
              episodesWatched: episodesWatched,
              chaptersRead: chaptersRead,
              scores: scores.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'entry';
        entry.build();

        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserReview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
