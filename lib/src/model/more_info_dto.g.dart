// GENERATED CODE - DO NOT MODIFY BY HAND

part of more_info_dto;

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

Serializer<MoreInfoDto> _$moreInfoDtoSerializer = new _$MoreInfoDtoSerializer();

class _$MoreInfoDtoSerializer implements StructuredSerializer<MoreInfoDto> {
  @override
  final Iterable<Type> types = const [MoreInfoDto, _$MoreInfoDto];
  @override
  final String wireName = 'MoreInfoDto';

  @override
  Iterable serialize(Serializers serializers, MoreInfoDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.moreinfo != null) {
      result
        ..add('moreinfo')
        ..add(serializers.serialize(object.moreinfo,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  MoreInfoDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoreInfoDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'moreinfo':
          result.moreinfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MoreInfoDto extends MoreInfoDto {
  @override
  final String moreinfo;

  factory _$MoreInfoDto([void updates(MoreInfoDtoBuilder b)]) =>
      (new MoreInfoDtoBuilder()..update(updates)).build();

  _$MoreInfoDto._({this.moreinfo}) : super._();

  @override
  MoreInfoDto rebuild(void updates(MoreInfoDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MoreInfoDtoBuilder toBuilder() => new MoreInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoreInfoDto && moreinfo == other.moreinfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, moreinfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoreInfoDto')
          ..add('moreinfo', moreinfo))
        .toString();
  }
}

class MoreInfoDtoBuilder implements Builder<MoreInfoDto, MoreInfoDtoBuilder> {
  _$MoreInfoDto _$v;

  String _moreinfo;
  String get moreinfo => _$this._moreinfo;
  set moreinfo(String moreinfo) => _$this._moreinfo = moreinfo;

  MoreInfoDtoBuilder();

  MoreInfoDtoBuilder get _$this {
    if (_$v != null) {
      _moreinfo = _$v.moreinfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoreInfoDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoreInfoDto;
  }

  @override
  void update(void updates(MoreInfoDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MoreInfoDto build() {
    final _$result = _$v ?? new _$MoreInfoDto._(moreinfo: moreinfo);
    replace(_$result);
    return _$result;
  }
}
