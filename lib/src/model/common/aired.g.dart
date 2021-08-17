// GENERATED CODE - DO NOT MODIFY BY HAND

part of aired;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Aired> _$airedSerializer = new _$AiredSerializer();

class _$AiredSerializer implements StructuredSerializer<Aired> {
  @override
  final Iterable<Type> types = const [Aired, _$Aired];
  @override
  final String wireName = 'Aired';

  @override
  Iterable<Object?> serialize(Serializers serializers, Aired object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.from;
    if (value != null) {
      result
        ..add('from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.string;
    if (value != null) {
      result
        ..add('string')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Aired deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AiredBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Aired extends Aired {
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? string;

  factory _$Aired([void Function(AiredBuilder)? updates]) =>
      (new AiredBuilder()..update(updates)).build();

  _$Aired._({this.from, this.to, this.string}) : super._();

  @override
  Aired rebuild(void Function(AiredBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiredBuilder toBuilder() => new AiredBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Aired &&
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
    return (newBuiltValueToStringHelper('Aired')
          ..add('from', from)
          ..add('to', to)
          ..add('string', string))
        .toString();
  }
}

class AiredBuilder implements Builder<Aired, AiredBuilder> {
  _$Aired? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  AiredBuilder();

  AiredBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Aired other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Aired;
  }

  @override
  void update(void Function(AiredBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Aired build() {
    final _$result = _$v ?? new _$Aired._(from: from, to: to, string: string);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
