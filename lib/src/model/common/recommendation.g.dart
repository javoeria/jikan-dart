// GENERATED CODE - DO NOT MODIFY BY HAND

part of recommendation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Recommendation> _$recommendationSerializer =
    new _$RecommendationSerializer();

class _$RecommendationSerializer
    implements StructuredSerializer<Recommendation> {
  @override
  final Iterable<Type> types = const [Recommendation, _$Recommendation];
  @override
  final String wireName = 'Recommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Recommendation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'recommendation_url',
      serializers.serialize(object.recommendationUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Recommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendationBuilder();

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
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommendation_url':
          result.recommendationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Recommendation extends Recommendation {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String recommendationUrl;
  @override
  final String title;
  @override
  final int votes;

  factory _$Recommendation([void Function(RecommendationBuilder)? updates]) =>
      (new RecommendationBuilder()..update(updates)).build();

  _$Recommendation._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.recommendationUrl,
      required this.title,
      required this.votes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(malId, 'Recommendation', 'malId');
    BuiltValueNullFieldError.checkNotNull(url, 'Recommendation', 'url');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, 'Recommendation', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        recommendationUrl, 'Recommendation', 'recommendationUrl');
    BuiltValueNullFieldError.checkNotNull(title, 'Recommendation', 'title');
    BuiltValueNullFieldError.checkNotNull(votes, 'Recommendation', 'votes');
  }

  @override
  Recommendation rebuild(void Function(RecommendationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendationBuilder toBuilder() =>
      new RecommendationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recommendation &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        recommendationUrl == other.recommendationUrl &&
        title == other.title &&
        votes == other.votes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, malId.hashCode), url.hashCode),
                    imageUrl.hashCode),
                recommendationUrl.hashCode),
            title.hashCode),
        votes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Recommendation')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('recommendationUrl', recommendationUrl)
          ..add('title', title)
          ..add('votes', votes))
        .toString();
  }
}

class RecommendationBuilder
    implements Builder<Recommendation, RecommendationBuilder> {
  _$Recommendation? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _recommendationUrl;
  String? get recommendationUrl => _$this._recommendationUrl;
  set recommendationUrl(String? recommendationUrl) =>
      _$this._recommendationUrl = recommendationUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  RecommendationBuilder();

  RecommendationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _recommendationUrl = $v.recommendationUrl;
      _title = $v.title;
      _votes = $v.votes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Recommendation;
  }

  @override
  void update(void Function(RecommendationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Recommendation build() {
    final _$result = _$v ??
        new _$Recommendation._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, 'Recommendation', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'Recommendation', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, 'Recommendation', 'imageUrl'),
            recommendationUrl: BuiltValueNullFieldError.checkNotNull(
                recommendationUrl, 'Recommendation', 'recommendationUrl'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Recommendation', 'title'),
            votes: BuiltValueNullFieldError.checkNotNull(
                votes, 'Recommendation', 'votes'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
