// GENERATED CODE - DO NOT MODIFY BY HAND

part of promo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Promo> _$promoSerializer = new _$PromoSerializer();

class _$PromoSerializer implements StructuredSerializer<Promo> {
  @override
  final Iterable<Type> types = const [Promo, _$Promo];
  @override
  final String wireName = 'Promo';

  @override
  Iterable<Object> serialize(Serializers serializers, Promo object,
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
  Promo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PromoBuilder();

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

class _$Promo extends Promo {
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String videoUrl;

  factory _$Promo([void Function(PromoBuilder) updates]) =>
      (new PromoBuilder()..update(updates)).build();

  _$Promo._({this.title, this.imageUrl, this.videoUrl}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Promo', 'title');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Promo', 'imageUrl');
    }
    if (videoUrl == null) {
      throw new BuiltValueNullFieldError('Promo', 'videoUrl');
    }
  }

  @override
  Promo rebuild(void Function(PromoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromoBuilder toBuilder() => new PromoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Promo &&
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
    return (newBuiltValueToStringHelper('Promo')
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('videoUrl', videoUrl))
        .toString();
  }
}

class PromoBuilder implements Builder<Promo, PromoBuilder> {
  _$Promo _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _videoUrl;
  String get videoUrl => _$this._videoUrl;
  set videoUrl(String videoUrl) => _$this._videoUrl = videoUrl;

  PromoBuilder();

  PromoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _imageUrl = _$v.imageUrl;
      _videoUrl = _$v.videoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Promo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Promo;
  }

  @override
  void update(void Function(PromoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Promo build() {
    final _$result = _$v ??
        new _$Promo._(title: title, imageUrl: imageUrl, videoUrl: videoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
