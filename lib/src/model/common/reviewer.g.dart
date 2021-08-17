// GENERATED CODE - DO NOT MODIFY BY HAND

part of reviewer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reviewer> _$reviewerSerializer = new _$ReviewerSerializer();

class _$ReviewerSerializer implements StructuredSerializer<Reviewer> {
  @override
  final Iterable<Type> types = const [Reviewer, _$Reviewer];
  @override
  final String wireName = 'Reviewer';

  @override
  Iterable<Object?> serialize(Serializers serializers, Reviewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'scores',
      serializers.serialize(object.scores,
          specifiedType: const FullType(ReviewScore)),
    ];
    Object? value;
    value = object.episodesSeen;
    if (value != null) {
      result
        ..add('episodes_seen')
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
  Reviewer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewerBuilder();

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
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes_seen':
          result.episodesSeen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReviewScore))! as ReviewScore);
          break;
      }
    }

    return result.build();
  }
}

class _$Reviewer extends Reviewer {
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String username;
  @override
  final int? episodesSeen;
  @override
  final int? chaptersRead;
  @override
  final ReviewScore scores;

  factory _$Reviewer([void Function(ReviewerBuilder)? updates]) =>
      (new ReviewerBuilder()..update(updates)).build();

  _$Reviewer._(
      {required this.url,
      required this.imageUrl,
      required this.username,
      this.episodesSeen,
      this.chaptersRead,
      required this.scores})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(url, 'Reviewer', 'url');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Reviewer', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(username, 'Reviewer', 'username');
    BuiltValueNullFieldError.checkNotNull(scores, 'Reviewer', 'scores');
  }

  @override
  Reviewer rebuild(void Function(ReviewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewerBuilder toBuilder() => new ReviewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reviewer &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        username == other.username &&
        episodesSeen == other.episodesSeen &&
        chaptersRead == other.chaptersRead &&
        scores == other.scores;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, url.hashCode), imageUrl.hashCode),
                    username.hashCode),
                episodesSeen.hashCode),
            chaptersRead.hashCode),
        scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reviewer')
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('username', username)
          ..add('episodesSeen', episodesSeen)
          ..add('chaptersRead', chaptersRead)
          ..add('scores', scores))
        .toString();
  }
}

class ReviewerBuilder implements Builder<Reviewer, ReviewerBuilder> {
  _$Reviewer? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  int? _episodesSeen;
  int? get episodesSeen => _$this._episodesSeen;
  set episodesSeen(int? episodesSeen) => _$this._episodesSeen = episodesSeen;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ReviewScoreBuilder? _scores;
  ReviewScoreBuilder get scores => _$this._scores ??= new ReviewScoreBuilder();
  set scores(ReviewScoreBuilder? scores) => _$this._scores = scores;

  ReviewerBuilder();

  ReviewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _username = $v.username;
      _episodesSeen = $v.episodesSeen;
      _chaptersRead = $v.chaptersRead;
      _scores = $v.scores.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reviewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Reviewer;
  }

  @override
  void update(void Function(ReviewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reviewer build() {
    _$Reviewer _$result;
    try {
      _$result = _$v ??
          new _$Reviewer._(
              url:
                  BuiltValueNullFieldError.checkNotNull(url, 'Reviewer', 'url'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, 'Reviewer', 'imageUrl'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'Reviewer', 'username'),
              episodesSeen: episodesSeen,
              chaptersRead: chaptersRead,
              scores: scores.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Reviewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
