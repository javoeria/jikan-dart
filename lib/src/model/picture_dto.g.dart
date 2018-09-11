// GENERATED CODE - DO NOT MODIFY BY HAND

part of picture_dto;

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

Serializer<PictureDto> _$pictureDtoSerializer = new _$PictureDtoSerializer();

class _$PictureDtoSerializer implements StructuredSerializer<PictureDto> {
  @override
  final Iterable<Type> types = const [PictureDto, _$PictureDto];
  @override
  final String wireName = 'PictureDto';

  @override
  Iterable serialize(Serializers serializers, PictureDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'large',
      serializers.serialize(object.large,
          specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PictureDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PictureDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PictureDto extends PictureDto {
  @override
  final String large;
  @override
  final String small;

  factory _$PictureDto([void updates(PictureDtoBuilder b)]) =>
      (new PictureDtoBuilder()..update(updates)).build();

  _$PictureDto._({this.large, this.small}) : super._() {
    if (large == null) {
      throw new BuiltValueNullFieldError('PictureDto', 'large');
    }
    if (small == null) {
      throw new BuiltValueNullFieldError('PictureDto', 'small');
    }
  }

  @override
  PictureDto rebuild(void updates(PictureDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureDtoBuilder toBuilder() => new PictureDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PictureDto && large == other.large && small == other.small;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, large.hashCode), small.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PictureDto')
          ..add('large', large)
          ..add('small', small))
        .toString();
  }
}

class PictureDtoBuilder implements Builder<PictureDto, PictureDtoBuilder> {
  _$PictureDto _$v;

  String _large;
  String get large => _$this._large;
  set large(String large) => _$this._large = large;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  PictureDtoBuilder();

  PictureDtoBuilder get _$this {
    if (_$v != null) {
      _large = _$v.large;
      _small = _$v.small;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PictureDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PictureDto;
  }

  @override
  void update(void updates(PictureDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PictureDto build() {
    final _$result = _$v ?? new _$PictureDto._(large: large, small: small);
    replace(_$result);
    return _$result;
  }
}
