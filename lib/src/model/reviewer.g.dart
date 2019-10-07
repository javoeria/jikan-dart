// GENERATED CODE - DO NOT MODIFY BY HAND

part of reviewer;

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

Serializer<Reviewer> _$reviewerSerializer = new _$ReviewerSerializer();

class _$ReviewerSerializer implements StructuredSerializer<Reviewer> {
  @override
  final Iterable<Type> types = const [Reviewer, _$Reviewer];
  @override
  final String wireName = 'Reviewer';

  @override
  Iterable serialize(Serializers serializers, Reviewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'episodes_seen',
      serializers.serialize(object.episodesSeen,
          specifiedType: const FullType(int)),
      'scores',
      serializers.serialize(object.scores,
          specifiedType: const FullType(ReviewScore)),
    ];

    return result;
  }

  @override
  Reviewer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewerBuilder();

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
              specifiedType: const FullType(int)) as int;
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReviewScore)) as ReviewScore);
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
  final int episodesSeen;
  @override
  final ReviewScore scores;

  factory _$Reviewer([void updates(ReviewerBuilder b)]) =>
      (new ReviewerBuilder()..update(updates)).build();

  _$Reviewer._(
      {this.url, this.imageUrl, this.username, this.episodesSeen, this.scores})
      : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('Reviewer', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Reviewer', 'imageUrl');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('Reviewer', 'username');
    }
    if (episodesSeen == null) {
      throw new BuiltValueNullFieldError('Reviewer', 'episodesSeen');
    }
    if (scores == null) {
      throw new BuiltValueNullFieldError('Reviewer', 'scores');
    }
  }

  @override
  Reviewer rebuild(void updates(ReviewerBuilder b)) =>
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
        scores == other.scores;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, url.hashCode), imageUrl.hashCode),
                username.hashCode),
            episodesSeen.hashCode),
        scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reviewer')
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('username', username)
          ..add('episodesSeen', episodesSeen)
          ..add('scores', scores))
        .toString();
  }
}

class ReviewerBuilder implements Builder<Reviewer, ReviewerBuilder> {
  _$Reviewer _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  int _episodesSeen;
  int get episodesSeen => _$this._episodesSeen;
  set episodesSeen(int episodesSeen) => _$this._episodesSeen = episodesSeen;

  ReviewScoreBuilder _scores;
  ReviewScoreBuilder get scores => _$this._scores ??= new ReviewScoreBuilder();
  set scores(ReviewScoreBuilder scores) => _$this._scores = scores;

  ReviewerBuilder();

  ReviewerBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _username = _$v.username;
      _episodesSeen = _$v.episodesSeen;
      _scores = _$v.scores?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reviewer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Reviewer;
  }

  @override
  void update(void updates(ReviewerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Reviewer build() {
    _$Reviewer _$result;
    try {
      _$result = _$v ??
          new _$Reviewer._(
              url: url,
              imageUrl: imageUrl,
              username: username,
              episodesSeen: episodesSeen,
              scores: scores.build());
    } catch (_) {
      String _$failedField;
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
