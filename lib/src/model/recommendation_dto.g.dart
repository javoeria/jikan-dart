// GENERATED CODE - DO NOT MODIFY BY HAND

part of recommendation_dto;

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

Serializer<RecommendationDto> _$recommendationDtoSerializer =
    new _$RecommendationDtoSerializer();

class _$RecommendationDtoSerializer
    implements StructuredSerializer<RecommendationDto> {
  @override
  final Iterable<Type> types = const [RecommendationDto, _$RecommendationDto];
  @override
  final String wireName = 'RecommendationDto';

  @override
  Iterable serialize(Serializers serializers, RecommendationDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      'recommendation_count',
      serializers.serialize(object.recommendationCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RecommendationDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendationDtoBuilder();

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
        case 'recommendation_count':
          result.recommendationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RecommendationDto extends RecommendationDto {
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
  final int recommendationCount;

  factory _$RecommendationDto([void updates(RecommendationDtoBuilder b)]) =>
      (new RecommendationDtoBuilder()..update(updates)).build();

  _$RecommendationDto._(
      {this.malId,
      this.url,
      this.imageUrl,
      this.recommendationUrl,
      this.title,
      this.recommendationCount})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('RecommendationDto', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('RecommendationDto', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('RecommendationDto', 'imageUrl');
    }
    if (recommendationUrl == null) {
      throw new BuiltValueNullFieldError(
          'RecommendationDto', 'recommendationUrl');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('RecommendationDto', 'title');
    }
    if (recommendationCount == null) {
      throw new BuiltValueNullFieldError(
          'RecommendationDto', 'recommendationCount');
    }
  }

  @override
  RecommendationDto rebuild(void updates(RecommendationDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendationDtoBuilder toBuilder() =>
      new RecommendationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationDto &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        recommendationUrl == other.recommendationUrl &&
        title == other.title &&
        recommendationCount == other.recommendationCount;
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
        recommendationCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecommendationDto')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('recommendationUrl', recommendationUrl)
          ..add('title', title)
          ..add('recommendationCount', recommendationCount))
        .toString();
  }
}

class RecommendationDtoBuilder
    implements Builder<RecommendationDto, RecommendationDtoBuilder> {
  _$RecommendationDto _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _recommendationUrl;
  String get recommendationUrl => _$this._recommendationUrl;
  set recommendationUrl(String recommendationUrl) =>
      _$this._recommendationUrl = recommendationUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _recommendationCount;
  int get recommendationCount => _$this._recommendationCount;
  set recommendationCount(int recommendationCount) =>
      _$this._recommendationCount = recommendationCount;

  RecommendationDtoBuilder();

  RecommendationDtoBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _recommendationUrl = _$v.recommendationUrl;
      _title = _$v.title;
      _recommendationCount = _$v.recommendationCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RecommendationDto;
  }

  @override
  void update(void updates(RecommendationDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RecommendationDto build() {
    final _$result = _$v ??
        new _$RecommendationDto._(
            malId: malId,
            url: url,
            imageUrl: imageUrl,
            recommendationUrl: recommendationUrl,
            title: title,
            recommendationCount: recommendationCount);
    replace(_$result);
    return _$result;
  }
}
