// GENERATED CODE - DO NOT MODIFY BY HAND

part of picture;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Picture> _$pictureSerializer = new _$PictureSerializer();

class _$PictureSerializer implements StructuredSerializer<Picture> {
  @override
  final Iterable<Type> types = const [Picture, _$Picture];
  @override
  final String wireName = 'Picture';

  @override
  Iterable<Object?> serialize(Serializers serializers, Picture object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.smallImageUrl;
    if (value != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.largeImageUrl;
    if (value != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Picture deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PictureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small_image_url':
          result.smallImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large_image_url':
          result.largeImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Picture extends Picture {
  @override
  final String imageUrl;
  @override
  final String? smallImageUrl;
  @override
  final String? largeImageUrl;

  factory _$Picture([void Function(PictureBuilder)? updates]) =>
      (new PictureBuilder()..update(updates)).build();

  _$Picture._({required this.imageUrl, this.smallImageUrl, this.largeImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Picture', 'imageUrl');
  }

  @override
  Picture rebuild(void Function(PictureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureBuilder toBuilder() => new PictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Picture &&
        imageUrl == other.imageUrl &&
        smallImageUrl == other.smallImageUrl &&
        largeImageUrl == other.largeImageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, imageUrl.hashCode), smallImageUrl.hashCode),
        largeImageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Picture')
          ..add('imageUrl', imageUrl)
          ..add('smallImageUrl', smallImageUrl)
          ..add('largeImageUrl', largeImageUrl))
        .toString();
  }
}

class PictureBuilder implements Builder<Picture, PictureBuilder> {
  _$Picture? _$v;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _smallImageUrl;
  String? get smallImageUrl => _$this._smallImageUrl;
  set smallImageUrl(String? smallImageUrl) =>
      _$this._smallImageUrl = smallImageUrl;

  String? _largeImageUrl;
  String? get largeImageUrl => _$this._largeImageUrl;
  set largeImageUrl(String? largeImageUrl) =>
      _$this._largeImageUrl = largeImageUrl;

  PictureBuilder();

  PictureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _smallImageUrl = $v.smallImageUrl;
      _largeImageUrl = $v.largeImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Picture other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Picture;
  }

  @override
  void update(void Function(PictureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Picture build() {
    final _$result = _$v ??
        new _$Picture._(
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, 'Picture', 'imageUrl'),
            smallImageUrl: smallImageUrl,
            largeImageUrl: largeImageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
