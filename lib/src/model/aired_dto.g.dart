// GENERATED CODE - DO NOT MODIFY BY HAND

part of aired_dto;

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

Serializer<AiredDto> _$airedDtoSerializer = new _$AiredDtoSerializer();

class _$AiredDtoSerializer implements StructuredSerializer<AiredDto> {
  @override
  final Iterable<Type> types = const [AiredDto, _$AiredDto];
  @override
  final String wireName = 'AiredDto';

  @override
  Iterable serialize(Serializers serializers, AiredDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(String)));
    }
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(String)));
    }
    if (object.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(object.string,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  AiredDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AiredDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AiredDto extends AiredDto {
  @override
  final String from;
  @override
  final String to;
  @override
  final String string;

  factory _$AiredDto([void updates(AiredDtoBuilder b)]) =>
      (new AiredDtoBuilder()..update(updates)).build();

  _$AiredDto._({this.from, this.to, this.string}) : super._();

  @override
  AiredDto rebuild(void updates(AiredDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AiredDtoBuilder toBuilder() => new AiredDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiredDto &&
        from == other.from &&
        to == other.to &&
        string == other.string;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, from.hashCode), to.hashCode), string.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AiredDto')
          ..add('from', from)
          ..add('to', to)
          ..add('string', string))
        .toString();
  }
}

class AiredDtoBuilder implements Builder<AiredDto, AiredDtoBuilder> {
  _$AiredDto _$v;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _string;
  String get string => _$this._string;
  set string(String string) => _$this._string = string;

  AiredDtoBuilder();

  AiredDtoBuilder get _$this {
    if (_$v != null) {
      _from = _$v.from;
      _to = _$v.to;
      _string = _$v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiredDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AiredDto;
  }

  @override
  void update(void updates(AiredDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AiredDto build() {
    final _$result =
        _$v ?? new _$AiredDto._(from: from, to: to, string: string);
    replace(_$result);
    return _$result;
  }
}
