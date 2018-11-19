// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_item_dto;

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

Serializer<FavoriteItemDto> _$favoriteItemDtoSerializer =
    new _$FavoriteItemDtoSerializer();

class _$FavoriteItemDtoSerializer
    implements StructuredSerializer<FavoriteItemDto> {
  @override
  final Iterable<Type> types = const [FavoriteItemDto, _$FavoriteItemDto];
  @override
  final String wireName = 'FavoriteItemDto';

  @override
  Iterable serialize(Serializers serializers, FavoriteItemDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FavoriteItemDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteItemDtoBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteItemDto extends FavoriteItemDto {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;

  factory _$FavoriteItemDto([void updates(FavoriteItemDtoBuilder b)]) =>
      (new FavoriteItemDtoBuilder()..update(updates)).build();

  _$FavoriteItemDto._({this.malId, this.url, this.imageUrl, this.name})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('FavoriteItemDto', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('FavoriteItemDto', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('FavoriteItemDto', 'imageUrl');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('FavoriteItemDto', 'name');
    }
  }

  @override
  FavoriteItemDto rebuild(void updates(FavoriteItemDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteItemDtoBuilder toBuilder() =>
      new FavoriteItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteItemDto &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, malId.hashCode), url.hashCode), imageUrl.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteItemDto')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name))
        .toString();
  }
}

class FavoriteItemDtoBuilder
    implements Builder<FavoriteItemDto, FavoriteItemDtoBuilder> {
  _$FavoriteItemDto _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  FavoriteItemDtoBuilder();

  FavoriteItemDtoBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteItemDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoriteItemDto;
  }

  @override
  void update(void updates(FavoriteItemDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteItemDto build() {
    final _$result = _$v ??
        new _$FavoriteItemDto._(
            malId: malId, url: url, imageUrl: imageUrl, name: name);
    replace(_$result);
    return _$result;
  }
}
