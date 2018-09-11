// GENERATED CODE - DO NOT MODIFY BY HAND

part of promo_dto;

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

Serializer<PromoDto> _$promoDtoSerializer = new _$PromoDtoSerializer();

class _$PromoDtoSerializer implements StructuredSerializer<PromoDto> {
  @override
  final Iterable<Type> types = const [PromoDto, _$PromoDto];
  @override
  final String wireName = 'PromoDto';

  @override
  Iterable serialize(Serializers serializers, PromoDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'video_url',
      serializers.serialize(object.videoUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PromoDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PromoDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PromoDto extends PromoDto {
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String videoUrl;

  factory _$PromoDto([void updates(PromoDtoBuilder b)]) =>
      (new PromoDtoBuilder()..update(updates)).build();

  _$PromoDto._({this.title, this.imageUrl, this.videoUrl}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('PromoDto', 'title');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('PromoDto', 'imageUrl');
    }
    if (videoUrl == null) {
      throw new BuiltValueNullFieldError('PromoDto', 'videoUrl');
    }
  }

  @override
  PromoDto rebuild(void updates(PromoDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PromoDtoBuilder toBuilder() => new PromoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromoDto &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        videoUrl == other.videoUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), imageUrl.hashCode), videoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PromoDto')
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('videoUrl', videoUrl))
        .toString();
  }
}

class PromoDtoBuilder implements Builder<PromoDto, PromoDtoBuilder> {
  _$PromoDto _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _videoUrl;
  String get videoUrl => _$this._videoUrl;
  set videoUrl(String videoUrl) => _$this._videoUrl = videoUrl;

  PromoDtoBuilder();

  PromoDtoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _imageUrl = _$v.imageUrl;
      _videoUrl = _$v.videoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromoDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PromoDto;
  }

  @override
  void update(void updates(PromoDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PromoDto build() {
    final _$result = _$v ??
        new _$PromoDto._(title: title, imageUrl: imageUrl, videoUrl: videoUrl);
    replace(_$result);
    return _$result;
  }
}
